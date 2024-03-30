package main

import (
	"fmt"
	"log"
	"os"
	"strings"
)

func main() {
	entries, err := os.ReadDir(".github/workflows")
	if err != nil {
		log.Fatal(err)
	}

	badges := []string{}
	links := []string{}

	for i := range entries {
		entry := entries[i]
		name := entry.Name()

		if strings.HasPrefix(name, "build-") && !strings.HasPrefix(name, "build-and-cache") {
			name, _ = strings.CutPrefix(name, "build-")
			name, _ = strings.CutSuffix(name, ".yml")

			badges = append(badges, fmt.Sprintf(`![[%s][%s]][%s-svg]`, name, name, name))

			links = append(
				links,
				fmt.Sprintf(
					`[%s]: https://github.com/northwood-labs/package-building/actions/workflows/build-%s.yml`,
					name,
					name,
				),
			)
			links = append(
				links,
				fmt.Sprintf(
					`[%s-svg]: https://img.shields.io/github/actions/workflow/status/northwood-labs/package-building/build-%s.yml?style=flat-square&label=%s&labelColor=171e21`,
					name,
					name,
					name,
				),
			)
		}
	}

	fmt.Println(strings.Join(badges, "\n"))
	fmt.Println("")
	fmt.Println(strings.Join(links, "\n"))
}
