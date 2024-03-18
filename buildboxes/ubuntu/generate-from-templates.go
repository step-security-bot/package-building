package main

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io"
	"os"
	"strings"
	"text/template"

	"github.com/goware/prefixer"
	"github.com/lithammer/dedent"
	log "github.com/sirupsen/logrus"
)

var (
	dockerfile *template.Template

	doNotEditWarning = strings.TrimSpace(dedent.Dedent(`
DO NOT EDIT THIS FILE!

1. Edit the *.gotmpl files instead.
2. Run 'go run generate-from-templates.go'.
`))
)

// JsonConfig models the JSON config file.
type JsonConfig struct {
	UbuntuVersions []string `json:"UbuntuVersions"`
}

func main() {
	// Read the templates into memory.
	dockerfile = template.Must(template.ParseFiles("_dockerfile.gotmpl"))

	var config JsonConfig

	// Read the contents of the JSON config file, parse them into a struct, and
	// save them into the `config` variable.
	data, err := os.ReadFile("template-values.json")
	if err != nil {
		log.Fatal(err)
	}

	err = json.Unmarshal(data, &config)
	if err != nil {
		log.Fatal(err)
	}

	// Iterate over the individual versions.
	for i := range config.UbuntuVersions {
		ubuntuVersion := config.UbuntuVersions[i]

		// Create the Dockerfile for the specific Java version.
		dockerfileFile, err := os.Create(fmt.Sprintf("Dockerfile.v%s", ubuntuVersion))
		if err != nil {
			log.Fatal(err)
		}

		// Do some magic to convert the DO NOT EDIT warning into a valid Dockerfile comment.
		buf := bytes.NewBufferString(doNotEditWarning)
		prefixReader := prefixer.New(buf, "# ")

		commentedBuf, err := io.ReadAll(prefixReader)
		if err != nil {
			log.Fatal(err)
		}

		doNotEditStringValue := strings.TrimSpace(dedent.Dedent(`
        ################################################################################
        %s
        ################################################################################
        `))

		// Take the template, execute it using variables we pass-in from the
		// JSON config, and write the result to the new Dockerfile.
		err = dockerfile.Execute(dockerfileFile, map[string]interface{}{
			"UbuntuVersion": ubuntuVersion,
			"DoNotEdit":     fmt.Sprintf(doNotEditStringValue, string(commentedBuf)),
		})
		if err != nil {
			log.Fatal(err)
		}
	}
}
