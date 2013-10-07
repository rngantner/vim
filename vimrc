call pathogen#infect()
syntax on
filetype plugin indent on

if has("gui_running")
    set autoread                 " if file is changed it is automatically reloaded
    set mouse=a                  " enable mouse support
    set history=1000             " long history
endif

" UI
set number                   " show line numbers
set scrolloff=3              " min 3 lines below cursor while scrolling
set ignorecase               " ignore case when searching
set cursorline               " highlight cursor line

" Statusline
if has("gui_running")
    set statusline=
    set statusline +=%1*\ %n\ %*            "buffer number
    set statusline +=%5*%{&ff}%*            "file format
    set statusline +=%3*%y%*                "file type
    set statusline +=%4*\ %<%F%*            "full path
    set statusline +=%2*%m%*                "modified flag
    set statusline +=%2*%=%{fugitive#statusline()}    " git branch info
    set statusline +=%1*%5l%*               "current line
    set statusline +=%2*/%L%*               "total lines
    set statusline +=%1*%4v\ %*             "virtual column number
    set statusline +=%2*0x%04B\ %*          "character under cursor

" Formatting
    set foldenable               " enable folding
    set foldmethod=syntax        " autofold for code
    set foldlevel=2              " fold level
endif

set autoindent               " indent at same level of previous line
set shiftwidth=4             " use indents of 4 spaces
set softtabstop=4            " tab length
set expandtab                " use spaces, not tabs
set matchpairs+=<:>          " add <> to available pairs
set colorcolumn=120

" Plugins
"   * Lucius
if has("gui_running")
	set lines=77
	set columns=130
	colorscheme lucius
	LuciusLight
        set guifont=Monospace\ 9
endif
"   * Latex-Suite
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'

