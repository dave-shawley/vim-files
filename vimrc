set noexpandtab tabstop=4 shiftwidth=4 softtabstop=4 autoindent
set nonumber foldlevelstart=99 modelines=40
set laststatus=2 backspace=indent,eol,start
set statusline=%f\ %m%y%{&et?'<SP>':'<TAB>'}%=line=%l/%L\ col=%c\ 
set wrapscan showmatch nohlsearch
filetype plugin indent on
syntax on

let loaded_matchparen=1 " Disable the annoying parenthesis matching plugin
let python_highlight_space_errors=1

set background=dark termguicolors
colorscheme solarized8_high

" Make diffs pretty in the console too!
if &diff
  set diffopt+=iwhite
endif

" I don't use dark mode in JetBrains
if $TERMINAL_EMULATOR == "JetBrains-JediTerm"
  set background=light
endif

" Catch the most annoying error when editing /etc/hosts
au BufRead *etc/hosts syn match ErrorMsg / /

" Because I have to edit deb changelogs :(
func DebianTimestamp()
  :read ! date -u '+\%a, \%d \%b \%Y \%H:\%M:\%S \%z'
endfunction
