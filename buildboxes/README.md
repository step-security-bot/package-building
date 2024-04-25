# Buildboxes

This will build Docker images for each entry of the OS/version/arch matrix we support. These Docker images are used for compiling and packaging software.

Alpine Linux and Ubuntu releases are fairly standard, and are generated from templates. Amazon Linux releases are too different from each other and are entirely custom. (This might change with Amazon Linux 2025, but we'll have to wait and see.)

The building/packaging processes rely on these images and expect them to be here.
