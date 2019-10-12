Import-Module -Name posh-git
function Test-Administrator {
    $user = [Security.Principal.WindowsIdentity]::GetCurrent();
    (New-Object Security.Principal.WindowsPrincipal $user).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}
function prompt {
    $realLASTEXITCODE = $LASTEXITCODE
    Write-Host
    # Reset color, which can be messed up by Enable-GitColors
    #$Host.UI.RawUI.ForegroundColor = $GitPromptSettings.DefaultForegroundColor
    if (Test-Administrator) {  # Use different username if elevated
        Write-Host "(Elevated) " -NoNewline -ForegroundColor White
    }
    Write-Host "$ENV:USERNAME@" -NoNewline -ForegroundColor White
    Write-Host "$ENV:COMPUTERNAME" -ForegroundColor DarkGray
    if ($s -ne $null) {  # color for PSSessions
        Write-Host " (`$s: " -NoNewline -ForegroundColor DarkGray
        Write-Host "$($s.Name)" -NoNewline -ForegroundColor Yellow
        Write-Host ") " -NoNewline -ForegroundColor DarkGray
    }
    Write-Host $($(Get-Location) -replace ($env:USERPROFILE).Replace('\','\\'), "~") -NoNewline -ForegroundColor Blue
    #Write-Host (Get-Date -Format "dd/MM/yy - HH:mm") -NoNewline -ForegroundColor White
    #Write-Host " : " -NoNewline -ForegroundColor DarkGray
    $global:LASTEXITCODE = $realLASTEXITCODE
    Write-VcsStatus
    Write-Host ""
    return "# "
}
function Get-Speaker {
    $speakerProfile = [PSCustomObject]@{
        Name = "Roberth Strand"
        Position = "Senior Consultant"
        Company = "Atea AS"
        'Primary Focus' = "Microsoft Azure, PowerShell, Security and Automation"
        'Secondary Focus' = "Microsoft & Office 365, Exchange and Teams"
        Certifications = $true
        Blog = "https://destruktive.one"
        Github = "@RoberthStrand"
        Twitter = "@RoberthTweets"
        Untapped = "@RoberthDrinks"
    }
    return $speakerProfile
}
