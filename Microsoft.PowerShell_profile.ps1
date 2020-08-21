# Module installation:
# Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force
# Install-Module -Name posh-git -Scope CurrentUser
# Install-Module -Name oh-my-posh -Scope CurrentUser
# Install-Module -Name z -Scope CurrentUser

if ($host.Name -eq 'ConsoleHost')
{
    Import-Module PSReadLine
    Set-PSReadlineOption -BellStyle None
    Set-PSReadLineOption -HistorySearchCursorMovesToEnd
    Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
    Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
    
    # use vi bindings, but selectively re-enable some others like copy/paste
    Set-PSReadLineOption -EditMode Vi
    Set-PSReadLineKeyHandler -Key Ctrl+a -Function SelectAll
    Set-PSReadLineKeyHandler -Key Ctrl+c -Function CopyOrCancelLine
    Set-PSReadLineKeyHandler -Key Ctrl+x -Function Cut
    Set-PSReadLineKeyHandler -Key Ctrl+v -Function Paste
    Set-PSReadLineKeyHandler -Key Shift+LeftArrow -Function SelectBackwardChar
    Set-PSReadLineKeyHandler -Key Shift+RightArrow -Function SelectForwardChar
    Set-PSReadLineKeyHandler -Key Ctrl+Shift+LeftArrow -Function SelectBackwardWord
    Set-PSReadLineKeyHandler -Key Ctrl+Shift+RightArrow -Function SelectNextWord
    
    # Dracula colors for PSReadLine -- works in conhost and wt -- install colors from https://github.com/dracula/powershell
    Set-PSReadlineOption -Color @{
        "Command" = [ConsoleColor]::Green
        "Parameter" = [ConsoleColor]::Gray
        "Operator" = [ConsoleColor]::Magenta
        "Variable" = [ConsoleColor]::White
        "String" = [ConsoleColor]::Yellow
        "Number" = [ConsoleColor]::Blue
        "Type" = [ConsoleColor]::Cyan
        "Comment" = [ConsoleColor]::DarkCyan
    }

    Import-Module oh-my-posh
    $DefaultUser = 'wafuqua' # hide "username@host" when on localhost and this user.
    Set-Prompt

    Import-Module z # track frequently used directories and jump to them with z

    function ls_alias { & 'C:\Program Files\Git\usr\bin\ls' --color=auto -hF $args }
    Set-Alias -Name ls -Value ls_alias -Option Private
}
