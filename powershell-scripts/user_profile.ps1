# Reference: https://www.youtube.com/watch?v=5-aK2_WwrmM
# prompt
Import-Module posh-git
Import-Module Terminal-Icons

# PSReadline
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward


# Fuzzy finder
Import-Module PSFzf

# Fzf config to make the ui modern looking.
$env:FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
Set-PSFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

oh-my-posh.exe init pwsh --config "C:\Users\bryndell.torio\.config\powershell\deltor-robruss.omp.json" | Invoke-Expression

function touch
{
  [CmdletBinding(SupportsShouldProcess)]
  param (
    [string]$Name
  )
  process
  {
    New-Item -ItemType File -Name $Name
  }
}

function grep
{
  param (
    [string]$Name
  )
  process
  {
    findstr /si $Name
  }
}

Set-Alias v nvim
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'







