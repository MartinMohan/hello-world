# hello-world

A minimal Go CLI app that prints "Hello, World!" and supports automated `.deb` packaging and Docker container builds.

## Quick Start

### Run with Docker (Recommended)

```bash
docker run ghcr.io/martinmohan/hello-world:0.1.0
```

This will output:
```
Hello, World!
```

### Run Locally

If you have Go installed:

```bash
go run ./cmd
```

Or build and run:

```bash
make build
./build/hello-world
```

## What does it do?

This is a simple CLI application that prints "Hello, World!" to the console. It's designed as a template for building Go applications with automated CI/CD pipelines.

## Version

Current version: `0.1.0`

- See the [VERSION](./VERSION) file for the current version
- Docker images are tagged with the version number
- GitHub releases are created automatically with each version

## Development

### Prerequisites

- Go 1.22+
- Docker (for container builds)
- FPM (for .deb package creation)

### Build Commands

```bash
make test      # Run tests
make build     # Build binary
make docker    # Build Docker image
make deb       # Create .deb package
make all       # Run tests and build
```

## CI/CD Pipeline

This project includes a complete GitHub Actions workflow that:

1. Runs tests on every push
2. Builds the Go binary
3. Creates a .deb package
4. Builds and pushes a Docker image to GitHub Container Registry
5. Creates a GitHub release with the .deb package

## License

This project is open source and available under the [MIT License](LICENSE).
