set encoding=utf-8
set expandtab tabstop=4 shiftwidth=4 softtabstop=4
set copyindent number
set foldmethod=indent foldignore=
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅

let python_highlight_all = 1

syntax match pythonLineTooLong /\%80c.*$/
highlight link pythonLineTooLong ColorColumn

runtime! indent/python.vim
