# Contributing to Quayside

Thank you for your interest in contributing to Quayside! This document outlines the process for contributing to the project.

## Contribution Process

### Submitting Changes

All changes to the project are submitted via pull requests. Before submitting a pull request, please ensure:

1. Your changes are well-tested
2. Your commits follow the guidelines below
3. Your code follows the project's coding standards

### Pull Request Merge Strategy

This project uses **rebase and merge** as the pull request merge strategy. This means:

- Each commit in your pull request will be added individually to the main branch
- The commit history remains linear and clean
- Each commit must stand on its own as a complete, atomic unit of work

### Commit Guidelines

#### Atomic Commits

Each commit should represent a single, atomic item of work that:

- Could be merged independently without breaking the project
- Contains a complete change (not partial implementation)
- Has a clear, single purpose
- Passes all tests and builds successfully

#### Conventional Commits

All commits **must** follow the [Conventional Commits](https://www.conventionalcommits.org/) specification.

**Format:**
```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

**Types:**
- `feat`: A new feature
- `fix`: A bug fix
- `docs`: Documentation only changes
- `style`: Changes that do not affect the meaning of the code (white-space, formatting, etc)
- `refactor`: A code change that neither fixes a bug nor adds a feature
- `perf`: A code change that improves performance
- `test`: Adding missing tests or correcting existing tests
- `build`: Changes that affect the build system or external dependencies
- `ci`: Changes to CI configuration files and scripts
- `chore`: Other changes that don't modify src or test files

**Examples:**
```
feat: add user authentication system
fix: resolve memory leak in connection pool
docs: update installation instructions
refactor: extract validation logic into separate module
```

**Breaking Changes:**

Breaking changes should be indicated by appending `!` after the type/scope, and should include a `BREAKING CHANGE:` footer:

```
feat!: remove deprecated API endpoints

BREAKING CHANGE: The /v1/legacy endpoint has been removed. Use /v2/users instead.
```

## Getting Started

1. Fork the repository
2. Create a new branch for your changes
3. Make your changes following the guidelines above
4. Submit a pull request

## Questions?

If you have questions about contributing, please open an issue for discussion.
