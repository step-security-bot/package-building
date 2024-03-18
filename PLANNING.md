# Planning

## Target operating systems

Only non-end-of-life OS releases are considered (e.g., CentOS Linux is dead). We are starting with this list, but will probably expand in the future for things that are reasonably maintainable.

| OS       | Release   | End-of-life date                                  |
|----------|-----------|---------------------------------------------------|
| [Alpine] | 3.16      | [2024-05-23](https://endoflife.date/alpine)       |
| [Alpine] | 3.17      | [2024-11-22](https://endoflife.date/alpine)       |
| [Alpine] | 3.18      | [2025-05-09](https://endoflife.date/alpine)       |
| [Alpine] | 3.19      | [2025-11-01](https://endoflife.date/alpine)       |
| [Amazon] | 2         | [2025-06-30](https://endoflife.date/amazon-linux) |
| [Amazon] | 2023      | [2028-03-15](https://endoflife.date/amazon-linux) |
| [Ubuntu] | 20.04 LTS | [2025-04-02](https://endoflife.date/ubuntu)       |
| [Ubuntu] | 22.04 LTS | [2027-04-01](https://endoflife.date/ubuntu)       |

> [!IMPORTANT]
> We will build exclusively for 64-bit ARM (`arm64`) and Intel-compatible (`amd64`) CPU architectures. If you need support for anything outside of those two, you should look elsewhere.

<!--
| [Ubuntu] | 24.04 LTS | [2020-04-01](https://endoflife.date/ubuntu)       |
-->

### Possibly in the future

* [AlmaLinux](https://hub.docker.com/_/almalinux) (binary compat with RHEL)
* [Debian](https://hub.docker.com/_/debian)
* [Fedora](https://hub.docker.com/_/fedora)

## List of packages

| ✓ | Package                                                                                                     | Version | Toolchain  |    Has Release?    |
|:-:|-------------------------------------------------------------------------------------------------------------|---------|------------|:------------------:|
|   | [1password-cli](https://developer.1password.com/docs/cli)                                                   | latest  | N/A        | :white_check_mark: |
|   | [actionlint](https://github.com/rhysd/actionlint)                                                           | latest  | Go         | :white_check_mark: |
|   | [amazon-cloudwatch-agent](https://github.com/aws/amazon-cloudwatch-agent)                                   | latest  | Go         |        :x:         |
|   | [amazon-ssm-agent](https://github.com/aws/amazon-ssm-agent)                                                 | latest  | Go         |        :x:         |
|   | [aws-session-manager-plugin](https://github.com/aws/session-manager-plugin)                                 | latest  | Go         |        :x:         |
|   | [aws-vault](https://github.com/99designs/aws-vault)                                                         | latest  | Go         | :white_check_mark: |
|   | [awscli](https://github.com/aws/aws-cli)                                                                    | latest  | Python     | :white_check_mark: |
|   | [bash@5.2](https://www.gnu.org/software/bash/)                                                              | v5.2    | C/C++      |        :x:         |
|   | [bat](https://github.com/sharkdp/bat)                                                                       | latest  | Rust       | :white_check_mark: |
|   | [bats-core](https://github.com/bats-core/bats-core)                                                         | latest  | Bash       |        :x:         |
|   | [benchstat](https://golang.org/x/perf/cmd/benchstat)                                                        | latest  | Go         |        :x:         |
|   | [btop](https://github.com/aristocratos/btop)                                                                | latest  | C/C++      |        :x:         |
|   | [cfn-lint](https://github.com/aws-cloudformation/cfn-lint)                                                  | latest  | Python     |        :x:         |
|   | [chag](https://github.com/mtdowling/chag)                                                                   | latest  | Bash       |        :x:         |
|   | [chamber](https://github.com/segmentio/chamber)                                                             | latest  | Go         | :white_check_mark: |
|   | [chromium](https://www.chromium.org/Home/)                                                                  | latest  | C/C++      | :white_check_mark: |
|   | [cloud-nuke](https://github.com/gruntwork-io/cloud-nuke)                                                    | latest  | Go         | :white_check_mark: |
|   | [cmark-gfm](https://github.com/github/cmark-gfm)                                                            | latest  | C/C++      |        :x:         |
|   | [container-diff](https://github.com/GoogleContainerTools/container-diff)                                    | latest  | Go         |        :x:         |
|   | [cosign](https://github.com/sigstore/cosign)                                                                | latest  | Go         | :white_check_mark: |
|   | [crane](https://github.com/google/go-containerregistry)                                                     | latest  | Go         |        :x:         |
|   | [direnv](https://github.com/direnv/direnv)                                                                  | latest  | Go         | :white_check_mark: |
|   | [dive](https://github.com/wagoodman/dive)                                                                   | latest  | Go         | :white_check_mark: |
|   | [docker-buildx](https://github.com/docker/buildx)                                                           | latest  | Go         | :white_check_mark: |
|   | [docker-compose](https://github.com/docker/compose)                                                         | latest  | Go         | :white_check_mark: |
|   | [driftwood](https://github.com/trufflesecurity/driftwood)                                                   | latest  | Go         | :white_check_mark: |
|   | [duck](https://duck.sh)                                                                                     | latest  | N/A        | :white_check_mark: |
|   | [editorconfig-checker](https://github.com/editorconfig-checker/editorconfig-checker)                        | latest  | Go         | :white_check_mark: |
|   | [eza](https://github.com/eza-community/eza)                                                                 | latest  | Rust       | :white_check_mark: |
|   | [fd](https://github.com/sharkdp/fd)                                                                         | latest  | Rust       | :white_check_mark: |
|   | [ffmpeg](https://ffmpeg.org)                                                                                | latest  | C/C++      |        :x:         |
|   | [firefox](https://firefox.com)                                                                              | latest  | C/C++      | :white_check_mark: |
|   | [fselect](https://github.com/jhspetersson/fselect)                                                          | latest  | Rust       |        :x:         |
|   | [fzf](https://github.com/junegunn/fzf)                                                                      | latest  | Go         | :white_check_mark: |
|   | [gh](https://github.com/cli/cli)                                                                            | latest  | Go         | :white_check_mark: |
|   | [git-cliff](https://github.com/orhun/git-cliff)                                                             | latest  | Rust       | :white_check_mark: |
|   | [go-binsize-treemap](https://github.com/nikolaydubina/go-binsize-treemap)                                   | latest  | Go         |        :x:         |
|   | [go-consistent](https://github.com/quasilyte/go-consistent)                                                 | latest  | Go         |        :x:         |
|   | [go-cover-treemap](https://github.com/nikolaydubina/go-cover-treemap)                                       | latest  | Go         |        :x:         |
|   | [gocovsh](https://github.com/orlangure/gocovsh)                                                             | latest  | Go         | :white_check_mark: |
|   | [godoc](https://golang.org/x/tools/cmd/godoc)                                                               | latest  | Go         |        :x:         |
|   | [golangci-lint](https://github.com/golangci/golangci-lint)                                                  | latest  | Go         | :white_check_mark: |
|   | [golines](https://github.com/segmentio/golines)                                                             | latest  | Go         | :white_check_mark: |
|   | [gommit](https://github.com/antham/gommit)                                                                  | latest  | Go         |        :x:         |
|   | [google-chrome](https://google.com/chrome/)                                                                 | latest  | C/C++      | :white_check_mark: |
|   | [goplicate](https://github.com/ilaif/goplicate)                                                             | latest  | Go         | :white_check_mark: |
|   | [goplicate](https://github.com/ilaif/goplicate/cmd/goplicate)                                               | latest  | Go         | :white_check_mark: |
|   | [goreleaser-pro](https://goreleaser.com/pro/)                                                               | latest  | N/A        | :white_check_mark: |
|   | [goreleaser](https://github.com/goreleaser/goreleaser)                                                      | latest  | Go         | :white_check_mark: |
|   | [gosec](https://github.com/securego/gosec/v2/cmd/gosec)                                                     | latest  | Go         | :white_check_mark: |
|   | [gotestsum](https://github.com/gotestyourself/gotestsum)                                                    | latest  | Go         | :white_check_mark: |
|   | [govulncheck](https://golang.org/x/vuln/cmd/govulncheck)                                                    | latest  | Go         |        :x:         |
|   | [hadolint](https://github.com/hadolint/hadolint)                                                            | latest  | Haskell    | :white_check_mark: |
|   | [hcledit](https://github.com/minamijoyo/hcledit)                                                            | latest  | Go         | :white_check_mark: |
|   | [htop](https://github.com/htop-dev/htop)                                                                    | latest  | C/C++      |        :x:         |
|   | [hugo-extended](https://github.com/gohugoio/hugo)                                                           | latest  | Cgo        | :white_check_mark: |
|   | [hugo](https://github.com/gohugoio/hugo)                                                                    | latest  | Go         | :white_check_mark: |
|   | [iam-policy-json-to-terraform](https://github.com/flosell/iam-policy-json-to-terraform)                     | latest  | Go         |        :x:         |
|   | [iamlive](https://github.com/iann0036/iamlive)                                                              | latest  | Go         | :white_check_mark: |
|   | [infracost](https://github.com/infracost/infracost)                                                         | latest  | Go         | :white_check_mark: |
|   | [jenkins-remoting-runner.jar](https://repo.jenkins-ci.org/artifactory/public/org/jenkins-ci/main/remoting/) | latest  | Java       | :white_check_mark: |
|   | [jp](https://github.com/jmespath-community/jp)                                                              | latest  | Go         | :white_check_mark: |
|   | [jq](https://github.com/jqlang/jq)                                                                          | latest  | C/C++      | :white_check_mark: |
|   | [lefthook](https://github.com/evilmartians/lefthook)                                                        | latest  | Go         | :white_check_mark: |
|   | [licensei](https://github.com/goph/licensei)                                                                | latest  | Go         | :white_check_mark: |
|   | [lychee](https://github.com/lycheeverse/lychee/)                                                            | latest  | Rust       | :white_check_mark: |
|   | [msedge](https://www.microsoft.com/en-us/edge/download?form=MA13FJ)                                         | latest  | C/C++      | :white_check_mark: |
|   | [ncdu](https://dev.yorhel.nl/ncdu)                                                                          | latest  | Zig        | :white_check_mark: |
|   | [nfpm](https://github.com/goreleaser/nfpm)                                                                  | latest  | Go         | :white_check_mark: |
|   | [opentofu](https://github.com/opentofu/opentofu)                                                            | latest  | Meta       | :white_check_mark: |
|   | [osquery](https://github.com/osquery/osquery)                                                               | latest  | C/C++      | :white_check_mark: |
|   | [osv-scanner](https://github.com/google/osv-scanner)                                                        | latest  | Go         | :white_check_mark: |
|   | [pandoc](https://pandoc.org/installing.html)                                                                | latest  | Haskell    | :white_check_mark: |
|   | [playwright](https://github.com/microsoft/playwright)                                                       | latest  | TypeScript | :white_check_mark: |
|   | [poetry](https://github.com/python-poetry/poetry)                                                           | latest  | Python     | :white_check_mark: |
|   | [pre-commit](https://github.com/pre-commit/pre-commit)                                                      | latest  | Python     | :white_check_mark: |
|   | [python@3.12](https://github.com/python/cpython)                                                            | v3.12   | C/C++      |        :x:         |
|   | [reviewdog](https://github.com/reviewdog/reviewdog)                                                         | latest  | Go         |        :x:         |
|   | [shellcheck](https://github.com/koalaman/shellcheck)                                                        | latest  | Haskell    | :white_check_mark: |
|   | [shfmt](https://github.com/mvdan/sh)                                                                        | latest  | Go         | :white_check_mark: |
|   | [smrcptr](https://github.com/nikolaydubina/smrcptr)                                                         | latest  | Go         |        :x:         |
|   | [sops](https://github.com/mozilla/sops)                                                                     | latest  | Go         | :white_check_mark: |
|   | [syft](https://github.com/anchore/syft)                                                                     | latest  | Go         | :white_check_mark: |
|   | [taplo](https://github.com/tamasfe/taplo)                                                                   | latest  | Rust       | :white_check_mark: |
|   | [tenv](https://github.com/tofuutils/tenv)                                                                   | latest  | Go         | :white_check_mark: |
|   | [terraform-docs](https://github.com/terraform-docs/terraform-docs)                                          | latest  | Go         | :white_check_mark: |
|   | [terraform](https://github.com/hashicorp/terraform)                                                         | latest  | Meta       | :white_check_mark: |
|   | [terraformer](https://github.com/GoogleCloudPlatform/terraformer)                                           | latest  | Go         | :white_check_mark: |
|   | [terragrunt](https://github.com/gruntwork-io/terragrunt)                                                    | latest  | Meta       | :white_check_mark: |
|   | [tflint-ruleset-aws](https://github.com/terraform-linters/tflint-ruleset-aws)                               | latest  | Go         | :white_check_mark: |
|   | [tflint-ruleset-azurerm](https://github.com/terraform-linters/tflint-ruleset-azurerm)                       | latest  | Go         | :white_check_mark: |
|   | [tflint-ruleset-google](https://github.com/terraform-linters/tflint-ruleset-google)                         | latest  | Go         | :white_check_mark: |
|   | [tflint](https://github.com/terraform-linters/tflint)                                                       | latest  | Go         | :white_check_mark: |
|   | [tfschema](https://github.com/minamijoyo/tfschema)                                                          | latest  | Go         | :white_check_mark: |
|   | [tomljson](https://github.com/pelletier/go-toml/v2/cmd/tomljson)                                            | latest  | Go         | :white_check_mark: |
|   | [trivy](https://github.com/aquasecurity/trivy)                                                              | latest  | Go         | :white_check_mark: |
|   | [trufflehog](https://github.com/trufflesecurity/trufflehog)                                                 | latest  | Go         | :white_check_mark: |
|   | [ttyd](https://github.com/tsl0922/ttyd)                                                                     | latest  | C/C++      |        :x:         |
|   | [unconvert](https://github.com/mdempsky/unconvert)                                                          | latest  | Go         |        :x:         |
|   | [vhs](https://github.com/charmbracelet/vhs)                                                                 | latest  | Go         |        :x:         |
|   | [webp](https://developers.google.com/speed/webp/docs/compiling)                                             | latest  | C/C++      |        :x:         |
|   | [woke](https://github.com/get-woke/woke)                                                                    | latest  | Go         | :white_check_mark: |
|   | [yamlfmt](https://github.com/google/yamlfmt)                                                                | latest  | Go         | :white_check_mark: |

[Alpine]: https://hub.docker.com/_/alpine
[Amazon]: https://hub.docker.com/_/amazonlinux
[Ubuntu]: https://hub.docker.com/_/ubuntu

<!--
better-bash
prompt-dark-shell
ssh-known-hosts
-->
