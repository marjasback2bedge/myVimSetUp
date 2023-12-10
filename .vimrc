unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim
set number "顯示行號 
set tabstop=4
set smarttab
set softtabstop=4
set shiftwidth=4
set cindent
set mouse=a
syntax enable
syntax on
set background=dark
set tabstop=4 softtabstop=4 shiftwidth=4
set scrolloff=3
set ai si
set nowrap " 禁止折行
set number
set ruler
set hlsearch
set incsearch
set cursorline
set t_Co=256
set nocompatible					" 讓vim在非相容模式下工作(不相容vi)
set showmatch                       " 顯示括號配對情況
filetype indent on
filetype on " 开启文件类型侦测
filetype plugin on " 根据侦测到的不同类型加载对应的插件
inoremap <c-d> <esc>ddi
:inoremap {<CR> {<CR>}<Esc>ko
noremap <F2> :call SwitchFullSimpleMode()<CR>
noremap! <F2> <Esc>:call SwitchFullSimpleMode()<CR>
function SwitchFullSimpleMode()
    if (&mouse == "a")
        let &mouse = ""
        set nocindent
        set nonumber
        set wrap
        echo "Switch to simple mode."
    else
        let &mouse = "a"
        set cindent
        set number
        set nowrap
        echo "Switch to full mode."
    endif
endfunction
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'w0ng/vim-hybrid'
Plug 'tpope/vim-commentary'
Plug 'ghifarit53/tokyonight-vim'
" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"  Plug 'Shougo/deoplete.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
" endif
" let g:deoplete#enable_at_startup = 1

call plug#end()
" colorscheme hybrid 
" let g:airline_section_b = '%{strftime("%c")}'
" let g:airline_theme='night_owl'
let g:airline_left_sep = ''
let g:airline_right_sep = ''

set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight
let g:airline_theme = "tokyonight"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'default'
