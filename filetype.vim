if exists("did_load_filetypes")
	finish
endif

augroup filetypedetect
	au! BufRead,BufNewFile Berksfile		setfiletype ruby
	au! BufRead,BufNewFile Guardfile		setfiletype ruby
	au! BufRead,BufNewFile Rakefile			setfiletype ruby
	au! BufRead,BufNewFile Vagrantfile	setfiletype ruby
augroup END

