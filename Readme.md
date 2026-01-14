![uRadical Homebrew Cask](logo.png)

Homebrew cask for [uRadical](https://uradical.io) apps. 


# Istall from private repos
## Create a GitHub Personal Access Token
- Go to https://github.com/settings/tokens
- Click "Generate new token" → "Generate new token (classic)"
- Give it a name like "Homebrew Access"
- Select the repo scope (full control of private repositories)
- Generate and copy the token
- Configure Homebrew Authentication
- Add this to your shell profile (~/.zshrc or ~/.bash_profile):

```
export HOMEBREW_GITHUB_API_TOKEN=your_github_token_here
```

Then reload your shell:

