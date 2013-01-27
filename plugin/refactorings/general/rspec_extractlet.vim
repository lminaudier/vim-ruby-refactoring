" Synopsis:
"   Extracts into an Rspec let declaration
"   Special thanks to ReinH (#vim room at irc.freenode.net)
function! ExtractIntoRspecLet()
  normal 0
  if empty(matchstr(getline("."), "=")) == 1
    echo "Can't find an assignment"
    return
  end
  normal! dd
  exec "?^\\s*\\<\\(describe\\|context\\)\\>"
  normal! $p
  exec "normal! ^ilet(:\<esc>Ea)\<esc>lldt=lldwi{ \<esc>A }\<esc>"
  normal V=

endfunction

