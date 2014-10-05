"git ls-files | egrep -v '\.(png|jpg)$'

"
function! argarg#LoadGitArgs()
  let mydate = system('date')
  " let mydate = "date"
  echom system('ls')
  echom mydate
endfunction

command! ArgArgLoadGitArgs :call argarg#LoadGitArgs()
