"git ls-files | egrep -v '\.(png|jpg)$'

"
function! argarg#LoadGitArgs()
  " let mydate = call system('date')
  let mydate = "date"
  echo mydate
endfunction

command! ArgArgLoadGitArgs :call argarg#LoadGitArgs()
