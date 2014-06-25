param(
    [Parameter(Mandatory)]
    [string]$url,
    [Parameter(Mandatory)]
    [string]$name
)

Invoke-WebRequest $url -OutFile $name
