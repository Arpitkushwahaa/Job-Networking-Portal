# Security Policy

## Supported Versions

Currently, we support the latest version of the application.

| Version | Supported          |
| ------- | ------------------ |
| 1.0.x   | :white_check_mark: |

## Reporting a Vulnerability

If you discover a security vulnerability, please send an email to security@example.com with:

1. Description of the vulnerability
2. Steps to reproduce
3. Potential impact
4. Suggested fix (if any)

**Please do not** open a public issue for security vulnerabilities.

## Security Best Practices

### For Users
- Never share your private keys or seed phrases
- Always verify transaction details before signing
- Use strong, unique passwords
- Enable 2FA when available
- Only use official links and applications

### For Developers
- Keep dependencies updated
- Use environment variables for secrets
- Implement rate limiting
- Validate all inputs
- Use HTTPS in production
- Regularly audit code
- Follow OWASP guidelines

## Known Security Considerations

### Blockchain Payments
- Always verify transactions on blockchain explorer
- Double-check recipient addresses
- Start with small amounts for testing
- Use devnet/testnet before mainnet

### Authentication
- JWT tokens expire after 7 days
- Passwords are hashed with bcrypt
- Implement rate limiting on auth endpoints

### Data Privacy
- User passwords are never stored in plain text
- Personal information is encrypted
- Wallet addresses are public by design

## Security Updates

We regularly update dependencies and address security issues. Check the changelog for security-related updates.

## Contact

For security-related inquiries: security@example.com
