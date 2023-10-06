set number 
set tabstop=4
set smarttab
set softtabstop=4
set shiftwidth=4
set cindent
set mouse=a
colorscheme desert
syntax on
set background=dark
set tabstop=4 softtabstop=4 shiftwidth=4
set lines=50 columns=135
set scrolloff=10
set ai
set nowrap
set number
set ruler
set hlsearch
set incsearch
set cursorline
filetype indent on
:inoremap {<CR> {<CR>}<Esc>ko
map <C-f> :call SwitchFullSimpleMode()<CR>
map! <C-f> <Esc>:call SwitchFullSimpleMode()<CR>
function SwitchFullSimpleMode()
    if (&mouse == "a")
        let &mouse = ""
        set nocindent
        set nonumber
        set wrap
        echo "Switch to simple mode.(nomouse, nonumber, nocindent, wrap)"
    else
        let &mouse = "a"
        set cindent
        set number
        set nowrap
        echo "Switch to full mode.(mouse, number, cindent, nowrap)"
    endif
endfunction
