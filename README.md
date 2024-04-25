# Building custom packages

> [!CAUTION]
> This is a BRAND-NEW project. Planning to move storage from Amazon S3 → Cloudflare R2. There is NO EXPECTATION of stability at this stage.

## Overview

We package things that we rely on, but are not commonly/universally available in package managers. We are not taking requests at the moment, but that may change in the future. If you are willing to do the work, you can fork this project and add things that _you_ rely on.

## What’s left?

<https://github.com/northwood-labs/package-building/milestone/1>

## Target operating systems

Only non-end-of-life OS releases are considered (e.g., CentOS Linux is dead). We are starting with this list, but will probably expand in the future for things that are reasonably maintainable.

| OS       | Release   | CPUs             | End-of-life date                                  | Package manager |
|----------|-----------|------------------|---------------------------------------------------|-----------------|
| [Alpine] | 3.17      | `amd64`, `arm64` | [2024-11-22](https://endoflife.date/alpine)       | `apk`           |
| [Alpine] | 3.18      | `amd64`, `arm64` | [2025-05-09](https://endoflife.date/alpine)       | `apk`           |
| [Alpine] | 3.19      | `amd64`, `arm64` | [2025-11-01](https://endoflife.date/alpine)       | `apk`           |
| [Amazon] | 2         | `amd64`, `arm64` | [2025-06-30](https://endoflife.date/amazon-linux) | `yum`           |
| [Amazon] | 2023      | `amd64`, `arm64` | [2028-03-15](https://endoflife.date/amazon-linux) | `dnf`           |
| [Ubuntu] | 20.04 LTS | `amd64`, `arm64` | [2025-04-02](https://endoflife.date/ubuntu)       | `apt-get`       |
| [Ubuntu] | 22.04 LTS | `amd64`, `arm64` | [2027-04-01](https://endoflife.date/ubuntu)       | `apt-get`       |
| [Ubuntu] | 24.04 LTS | `amd64`, `arm64` | [2029-04-XX](https://endoflife.date/ubuntu)       | `apt-get`       |

> [!IMPORTANT]
> We will build exclusively for 64-bit ARM (`arm64`) and Intel-compatible (`amd64`) CPU architectures. If you need support for anything outside of those two, you should look elsewhere.

### Possibly in the future

> [!NOTE]
> These are only important for packages compiled from source that are sensitive to which versions of shared C libraries are installed on the current system. Many of the packages we're providing are written in Go or Rust, and will run on any Linux without modification.

* [AlmaLinux](https://hub.docker.com/_/almalinux) (binary compat with RHEL)
* [Debian](https://hub.docker.com/_/debian)
* [Fedora](https://hub.docker.com/_/fedora)

[Alpine]: https://hub.docker.com/_/alpine
[Amazon]: https://hub.docker.com/_/amazonlinux
[Ubuntu]: https://hub.docker.com/_/ubuntu

## List of packages

The list of planned/built packages is documented at <https://github.com/northwood-labs/package-building/wiki/List-of-packages>.

Ones with a build chiclet are packaging and running. Those without are still pending.
