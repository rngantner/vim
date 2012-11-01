call pathogen#infect()
syntax on
filetype plugin indent on

set autoread                 " if file is changed it is automatically reloaded
set mouse=a                  " enable mouse support
set history=1000             " long history

" UI
set number                   " show line numbers
set scrolloff=3              " min 3 lines below cursor while scrolling
set ignorecase               " ignore case when searching
set foldenable               " enable folding
set foldmethod=syntax        " autofold for code
set cursorline               " highlight cursor line

" Formatting
set foldlevel=2              " fold level
set autoindent               " indent at same level of previous line
set shiftwidth=4             " use indents of 4 spaces
set softtabstop=4            " tab length
set expandtab                " use spaces, not tabs
set matchpairs+=<:>          " add <> to available pairs

" Plugins
"   * Lucius
if has("gui_running")
	set lines=55
	set columns=130
	colorscheme lucius
	LuciusLight
endif
"   * Latex-Suite
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'

