if exists("did_load_filetypes")
	finish
endif

augroup filetypedetect
	au! BufRead,BufNewFile Vagrantfile		setfiletype ruby
augroup END

