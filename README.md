# config
config for wezterm, neovim, oh-my-posh powershell

# wezterm
install:<br>
winget install wezterm<br>
download both spike2.png and black.png files and place them in the "Pictures" directory from home directory

# PowerShell
winget install --id Microsoft.Powershell --source winget<br>
if it doesn't work then go to apps and delete current version of powershell and reinstall with above command

# Oh My Posh
Install via terminal:<br>
winget install JanDeDobbeleer.OhMyPosh -s winget

upgrade via terminal:<br>
winget upgrade JanDeDobbeleer.OhMyPosh -s winget

Get a theme:<br>
Get-PoshThemes

update theme:<br>
C:\Users\username\Documents\PowerShell\Microsoft.PowerShell_profile.ps1<br>
if the file doesn't exist create it.<br>

Microsoft.PowerShell_profile.ps1:<br>
oh-my-posh init pwsh --config 'C:\Users\username\AppData\Local\Programs\oh-my-posh\themes\rudolfs-light.omp.json' | Invoke-Expression <br><br>
"rudolfs-light.omp.json" -- change to whatever theme you want

# Neovim
install:<br>
winget install Neovim.Neovim

Install ripgrep:<br>
choco install ripgrep *or*<br>
winget install BurntSushi.ripgrep.MSVC

replace nvim folder in appdata directory with updated one from repo<br><br>
may have to go in config files and :so them all to update. Same goes for Lazy and Mason package managers.
# Java
for java development go to https://download.eclipse.org/jdtls/milestones/?d and update the ftplugin/java.lua cmd{} file path to the correct location
