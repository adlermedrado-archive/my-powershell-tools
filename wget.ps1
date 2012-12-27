# Simple PowerShell script to get data from web
# It's inspired on *nix wget
# Author: Adler Medrado
# http://adlermedrado.com.br
# Under the MIT License

$url=$args[0]
$name=$args[1]
$error="Like this: ./wget.ps1 http://mysite.com myfilename.txt"

if ($url) {
	IF([string]::IsNullOrEmpty($name)) {            
	    Write-Host "You must give a name to downloaded file"
	    Write-Host $error
	} else {
		Write-host Wait a minute. Getting $url
		Invoke-WebRequest $url -OutFile $name            
	}
} else {
	Write-Host You must provide an URL
	Write-Host $error	
}