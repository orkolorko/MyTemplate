using PkgTemplates

t = Template(;
    user="orkolorko",
    dir="~/Coding",
    authors="Isaia Nisoli",
    julia=v"1.1",
    plugins=[
        ProjectFile(; version=v"0.0.1-DEV"),
        Tests(; project=true
        ),
        Readme(),
        License(; name="MIT"),
        Git(; manifest=true, ssh=true), 
        GitHubActions(), # add API token secrets
        CompatHelper(),
        TagBot(),
        Dependabot(),
        Codecov(),
        Documenter{GitHubActions}(),
        Citation(),
        RegisterAction(),
        Formatter(; style = "sciml"),
    ],
)