<#
This is a PowerShell script to set up my default environment.
Feel free to use this file to get inspiration for your own script.

@RoberthStrand (GitHub)
@RoberthTweets (Twitter)

#>

# Install Chocolatey, the best package manager for Windows
Set-ExecutionPolicy Bypass -Scope Process -Force
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install selected packages
$packages = @(
    "vlc"
    "7zip"
    "git"
    "github-desktop"
    "putty"
    "googlechrome"
    "firefox"
    "filezilla"
    "teamviewer"
    "keepass"
    "vscode"
    "terraform"
    "packer"
    "rdmfree"
    "discord"
    "steam"
    "bitwarden"
)
choco install $packages -y

# PowerShell Modules
Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted
$modules = @(
    "SkypeToolPack"
    "CheckSec"
    "ExchangeOnlineManagement"
    "Az"
    "pester"
    "PoSH-Git"
    "MSOnline"
    "oh-my-posh"
)
Install-Module $modules -Confirm:$false