set expandtab tabstop=4 shiftwidth=4 softtabstop=4
set copyindent
set foldmethod=indent foldignore=
runtime! indent/python.vim

function Py_SaveActions()
	let l:keep_going = 1

	if executable("py.test")
		let l:keep_going = (PyTest() == 0)
	endif

	if l:keep_going && executable("flake8")
		call Flake8()
	endif
endfunction
autocmd BufWritePost *.py call Py_SaveActions()

