set encoding=utf-8
set expandtab tabstop=4 shiftwidth=4 softtabstop=4
set copyindent number
set foldmethod=indent foldignore=
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅

let python_highlight_all = 1

syntax match pythonLineTooLong /\%80c.*$/
highlight link pythonLineTooLong ColorColumn

runtime! indent/python.vim

if executable("flake8")
	map <F7> :call Flake8()<CR>
endif

" function! Py_SaveActions()
" 	let l:keep_going = 1
" 
" 	if executable("py.test")
" 		let l:keep_going = (PyTest() == 0)
" 	endif
" 
" 	if l:keep_going && executable("flake8")
" 		call Flake8()
" 	endif
" endfunction
" autocmd BufWritePost *.py call Py_SaveActions()

