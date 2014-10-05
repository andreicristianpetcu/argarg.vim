"git ls-files | egrep -v '\.(png|jpg)$'

"
function! argarg#LoadGitArgs()
  echo "TEST"
endfunction

command! ArgArgLoadGitArgs :call argarg#LoadGitArgs()
