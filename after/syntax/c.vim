" C/C++ operator & brackets highlighting

syn match cOperatorList "+\|-\|\*\|;\|?\|:\|,\|<\|>\|\^\|&\||\|!\|\~\|%\|=\|)\|(\|{\|}\|\.\|\[\|\]"
syn match cDivideOperator  /\/[^\/\*]/me=s+1
hi def link cOperatorList Special
hi def link cDivideOperator Special

