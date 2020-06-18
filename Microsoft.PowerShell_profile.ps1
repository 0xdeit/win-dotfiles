Set-Location -Path '~'
$gnvim = "C:\tools\neovim\Neovim\bin\nvim-qt.exe"
$vim = "C:\tools\neovim\Neovim\bin\nvim.exe"

Set-Alias vi $vim
Set-Alias vim $vim
Set-Alias gvim $gnvim

function global:prompt {
    $CurrentTime = (Get-Date).ToString("hh:mm")
    $PwdPath = Split-Path -Path $pwd -Leaf
    Write-Host -Object "($Currenttime) [$PwdPath]" -NoNewline -ForegroundColor Green
    return "$ "
}

function Edit-Profile {
    vim $profile
}

function Edit-Profile-G {
    gvim $profile
}

function Edit-Nvim {
    vim ~\AppData\Local\nvim\init.vim
}

function Edit-Nvim-G {
    gvim ~\AppData\Local\nvim\ginit.vim
}

Set-Alias psvim Edit-Profile
Set-Alias psgvim Edit-Profile-G
Set-Alias vimrc Edit-Nvim
Set-Alias gvimrc Edit-Nvim-G