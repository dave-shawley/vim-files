set tabstop=4 shiftwidth=4 autoindent wrapscan showmatch
set backspace=indent,eol,start
set exrc modelines=30
set foldmethod=syntax foldenable foldlevelstart=1024
set noruler laststatus=2 statusline=%f%y%m%=line=%l/%L\ column=%c\ 

let loaded_matchparen=1 " Disable the parenthesis matching plugin
let python_highlight_space_errors=1
let g:flake8_ignore="W293,W391,E128"

if has("gui_running")
	set guioptions-=m " no menu bar
	set guioptions-=M " don't source menu.vim
	set guioptions-=T " no toolbar
	set guioptions-=r " no need for a vertical scroll bar
	set guioptions-=L " no need for a horizontal scroll bar
	set guioptions+=e " allow tab pages
	map <F2> :set lines=100<CR>
else
	set background=dark
	colorscheme murphy
endif

filetype plugin indent on
syntax on
