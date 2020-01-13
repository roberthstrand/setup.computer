<#
This is a PowerShell script to set up my default environment.
Feel free to use this file to get inspiration for your own script.

@RoberthStrand (GitHub)
@RoberthTweets (Twitter)

#>

# Install Chocolatey, the best package manager for Windows
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install selected packages
$packages = @(
    "vlc"
    "7zip"
    "git"
    "putty"
    "googlechrome"
    "firefox"
    "filezilla"
    "teamviewer"
    "keepass"
    "vscode"
    "terraform"
    "rdmfree"
    "discord"
    "steam"
)
choco install $packages -y