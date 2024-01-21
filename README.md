# config
config for wezterm, neovim, oh-my-posh, powershell, intellij

# wezterm
install:<br>
winget install wezterm<br><br>
place the wezterm directory inside the .config directory in your home directory.<br><br>
download the image files and place them either in the "Pictures" directory in your home directory or your .config directory alongside your wezterm.lua file.<br>
Update the file path in your config.background{}.

# PowerShell
winget install --id Microsoft.Powershell --source winget<br>
if it doesn't work then go to apps and delete current version of powershell and reinstall with above command.

# Oh My Posh
Install via terminal:<br>
winget install JanDeDobbeleer.OhMyPosh -s winget

upgrade via terminal:<br>
winget upgrade JanDeDobbeleer.OhMyPosh -s winget<br>
>*upgrading will remove your custom theme and replace it with the default. Back up your current theme*

<br>Get a theme:<br>
Get-PoshThemes

init via terminal:<br>
oh-my-posh init pwsh --config 'C:\Users\username\AppData\Local\Programs\oh-my-posh\themes\rudolfs-light.omp.json' | Invoke-Expression <br><br>
"rudolfs-light.omp.json" -- change to whatever theme you want.<br><br>

if you want to edit theme you can go to the directory defined in the init file path and edit as you please.

update theme:<br>
C:\Users\username\Documents\PowerShell\Microsoft.PowerShell_profile.ps1<br>
if the file doesn't exist create it.<br>

put same command you used to init inside the Microsoft.PowerShell_profile.ps1 file<br><br>


# Neovim
install:<br>
winget install Neovim.Neovim

Install ripgrep:<br>
choco install ripgrep *or*<br>
winget install BurntSushi.ripgrep.MSVC

If there exists a current nvim directory, replace it in appdata directory with updated one from repo.<br><br>
May have to go in config files and :so them all to update.<br><br>
May have to Update/Sync plugins in Lazy.<br> 
  You do this by using the command :Lazy then press "U" or "S" <br><br>
May have to reinstall LSPs in Mason<br>
  You do this with the command :MasonUninstall "package" and :MasonInstall "package".<br>
  If you get an error saying you cant modify, close neovim, go back in neovim and try it without opening a file. or use :set ma.

# Java
To get the java LSP go to: https://download.eclipse.org/jdtls/milestones/?d and update the ftplugin/java.lua cmd{} file path to the correct location.

# IntelliJ Vim Mode
Install:<br>
Settings -> Plugins -> Marketplace -> "IdeaVim"<br>
copy .ideavimrc inside home directory
