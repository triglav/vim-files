autocmd FileType snippet
      \ setlocal nolist
      \ foldmethod=expr
      \ foldexpr=getline(v:lnum)=~'^#'?0:1&&getline(v:lnum)=~'^snippet'?'>1':1
