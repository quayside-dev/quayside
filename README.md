# Quayside

A pull-through cache for package registries that enhances supply-chain security by enforcing checks before packages are made available to consumers.

## Overview

Quayside sits between your development environment and upstream package registries, acting as a caching proxy that inspects packages before serving them. When a package is requested, Quayside fetches it from the upstream registry, runs configured security and compliance checks, and only serves it if all checks pass. Subsequent requests are served from the cache.

## Key Features

- **Supply-Chain Security**: Enforce security checks before packages reach your systems
- **CVE Scanning**: Detect known vulnerabilities in package dependencies
- **License Compatibility**: Ensure packages comply with your organization's licensing requirements
- **Malware Detection**: Scan packages for malicious code and suspicious patterns
- **Configurable Checks**: Define custom checks and policies for your needs
- **Multi-Registry Support**: Works with multiple package registries and ecosystems
- **Caching**: Improve build times by caching approved packages locally

## Supported Registries

There are plans to support the following package registries:

- [] **crates.io** - Rust packages
- [ ] **PyPI** - Python packages
- [ ] **npm** - JavaScript/Node.js packages
- [ ] **OCI Registries** - Container images (Docker Hub, ghcr.io, etc.)

## Use Cases

- **Enterprise Security**: Prevent vulnerable or malicious packages from entering your infrastructure
- **Compliance**: Enforce licensing and regulatory requirements across dependencies
- **Air-Gapped Environments**: Cache approved packages for offline/restricted networks
- **CI/CD Pipelines**: Ensure builds only use vetted dependencies
- **Supply-Chain Auditing**: Track and log all package requests and check results
- **Reduce Network Traffic**: Cache packages within your perimeter for improved performance

## How It Works

1. Your package manager requests a package from Quayside
2. Quayside fetches the package from the upstream registry (if not cached)
3. Configured checks run against the package (CVE scan, license check, etc.)
4. If all checks pass, the package is cached and served
5. If any check fails, the package is rejected and an error is returned
6. Subsequent requests for approved packages are served from the cache

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for details on how to contribute to Quayside.

## License

Apache 2.0 - see [LICENSE](LICENSE) for details.
