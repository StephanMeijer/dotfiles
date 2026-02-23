# chezmoi dotfiles development tasks

# List available recipes
default:
    @just --list

# Run all pre-commit hooks against all files
pre-commit:
    pre-commit run --all-files

# Show what chezmoi would change
diff:
    chezmoi diff

# Apply chezmoi changes to home directory
apply:
    chezmoi apply -v

# Verify chezmoi source state is valid
verify:
    chezmoi verify

# Scan for secrets
secrets:
    gitleaks detect --source . --verbose --no-git

# Run all checks (pre-commit + verify + secrets)
check: pre-commit verify secrets
