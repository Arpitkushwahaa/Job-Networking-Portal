# Contributing to Job & Networking Portal

Thank you for your interest in contributing! This document provides guidelines for contributing to this project.

## Development Setup

Please refer to [DEPLOYMENT.md](DEPLOYMENT.md) for detailed setup instructions.

## Code Style

### Frontend (React)
- Use functional components with hooks
- Follow Airbnb JavaScript style guide
- Use meaningful variable and function names
- Add PropTypes for components
- Keep components small and focused

### Backend (Golang)
- Follow standard Go conventions
- Use meaningful package and variable names
- Add comments for exported functions
- Handle errors properly
- Write unit tests for critical functions

### AI Service (Python)
- Follow PEP 8 style guide
- Use type hints where applicable
- Document functions with docstrings
- Keep functions pure when possible

## Commit Messages

Follow conventional commits format:
```
feat: add new feature
fix: bug fix
docs: documentation changes
style: formatting changes
refactor: code refactoring
test: add tests
chore: maintenance tasks
```

## Pull Request Process

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'feat: add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## Testing

- Write tests for new features
- Ensure all tests pass before submitting PR
- Test manually in development environment

## Questions?

Feel free to open an issue for any questions or concerns.
