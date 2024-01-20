# config
config for wezterm, neovim, oh-my-posh powershell

# winget
Install via terminal:<br>
winget install JanDeDobbeleer.OhMyPosh -s winget

upgrade via terminal:<br>
winget upgrade JanDeDobbeleer.OhMyPosh -s winget

Get a theme:<br>
Get-PoshThemes

update theme:<br>
C:\Users\"username"\Documents\PowerShell\Microsoft.PowerShell_profile.ps1

Microsoft.PowerShell_profile.ps1:<br>
oh-my-posh init pwsh --config 'C:\Users\"username"\AppData\Local\Programs\oh-my-posh\themes\rudolfs-light.omp.json' | Invoke-Expression <br><br>
"rudolfs-light.omp.json" -- change to whatever theme you want

# Java
for java development go to https://download.eclipse.org/jdtls/milestones/?d and update the ftplugin/java.lua cmd{} file path to the correct location
