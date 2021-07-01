if exists("did_load_filetypes")
    finish
endif

augroup filetypedetect
  au! BufRead,BufNewFile Berksfile      setfiletype ruby
  au! BufRead,BufNewFile Gemfile        setfiletype ruby
  au! BufRead,BufNewFile Guardfile      setfiletype ruby
  au! BufRead,BufNewFile Kitchenfile    setfiletype ruby
  au! BufRead,BufNewFile Vagrantfile    setfiletype ruby
  au! BufRead,BufNewFile *.bats         setfiletype bats
  au! BufRead,BufNewFile *.pu           setfiletype plantuml
  au! BufRead,BufNewFile *.eml          setfiletype mail
  au! BufRead,BufNewFile *.avsc         setfiletype avro
  au! BufRead,BufNewFile *.wiki         setfiletype wiki
augroup END
