" Vim filetype plugin for running py.test
" Last Change:
" Maintainer:	Dave Shawley <daveshawley@gmail.com>
" License:		This file is placed into the public domain.
if exists("b:loaded_pytest_ftplugin")
	finish
endif
let b:loaded_pytest_ftplugin=1

let s:pytest_cmd="py.test"

if !exists("*PyTest")
	function PyTest()
		if !executable(s:pytest_cmd)
			echoerr "File " . s:pytest_cmd . " was not found. Please install it first."
			return
		endif

		set lazyredraw
		cclose " we are going to rewrite the QF list

		if &readonly == 0
			update
		endif

		" save these for later
		let l:saved_grepformat=&grepformat
		let l:saved_grepprg=&grepprg

		let &grepformat="%f:%l: %m"
		let &grepprg=s:pytest_cmd." --doctest-modules"
		silent! grep! %

		" restore the settings
		let &grepformat = l:saved_grepformat
		let &grepprg = l:saved_grepprg

		" now spin through the result set
		let l:has_results = 0
		for d in getqflist()
			if has_key(d, 'isvalid') && d.isvalid != 0
				let l:has_results = 1
				break
			endif
		endfor

		set nolazyredraw
		redraw!

		if l:has_results == 0
			hi Green ctermfg=green
			echohl Green
			echon "py.test OK"
			echohl None
		else
			execute 'belowright copen'
			setlocal wrap
		endif
		return l:has_results
	endfunction
endif

