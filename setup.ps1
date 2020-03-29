<#
This is a PowerShell script to set up my default environment.
Feel free to use this file to get inspiration for your own script.

@RoberthStrand (GitHub)
@RoberthTweets (Twitter)

#>
# Set executionpolicy to bypass, but only for the run of this script.
Set-ExecutionPolicy Bypass -Scope Process -Force

# Install Chocolatey, the best package manager for Windows
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

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
    "PoSH-Git"
    "MSOnline"
    "oh-my-posh"
)
Install-Module $modules -Confirm:$false