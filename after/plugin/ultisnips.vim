autocmd FileType snippets
      \ setlocal nolist
      \ foldmethod=expr
      \ foldexpr=getline(v:lnum)=~'^snippet'?'>1':1&&getline(v:lnum)=~'^endsnippet'?'<1':'='
