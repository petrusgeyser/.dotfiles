Import-Module posh-git

oh-my-posh --init --shell pwsh --config C:\Users\pgeyser\Documents\PowerShell\tokyonight.omp.yaml | Invoke-Expression

Import-Module -Name Terminal-Icons
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineKeyHandler -Key Ctrl+r -Function ReverseSearchHistory

function n { nvim ${Args} }
function gs { git status ${Args} }
function gf { git fetch ${Args} }
function gl { git pull ${Args} }
function gp { git push ${Args} }
function gpt { git push --tags ${Args} }
function gP { git push --force-with-lease ${Args} }
function ga { git add ${Args} }
function gcam { git commit -am ${Args} }
function gd { git diff ${Args} }
function gw { git diff --word-diff ${Args} }
