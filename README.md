This contains my configuration for Julia Packages templates.

It is important to remember, after using PkgTemplates:
- adding secrets in Github actions for Coverage
https://docs.github.com/en/actions/security-guides/using-secrets-in-github-actions#creating-encrypted-secrets
- adding secrets in Github actions for Documenter
https://documenter.juliadocs.org/stable/man/hosting/#Hosting-Documentation
```
julia> using DocumenterTools
julia> DocumenterTools.genkeys(user="MyUser", repo="MyPackage.jl")
```