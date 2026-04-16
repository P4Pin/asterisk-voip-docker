# Contributing

Thanks for contributing.

## Guidelines

- Keep committed configuration generic and reusable.
- Do not commit real credentials, real SIP accounts, or environment-specific secrets.
- Prefer updating `*.example` templates instead of committing local runtime config.
- Keep documentation in sync with configuration changes.

## Suggested Workflow

1. Create a branch.
2. Make focused changes.
3. Test with Docker Compose.
4. Update documentation if behavior or setup changed.
5. Open a pull request with a clear summary.

## Commit Message Style

Examples:

- `docs: improve setup instructions`
- `chore: ignore runtime config files`
- `feat: add sample voicemail template`
- `fix: adjust Asterisk startup entrypoint`