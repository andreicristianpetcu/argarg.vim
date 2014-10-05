"git ls-files | egrep -v '\.(png|jpg)$'

"
function! argarg#LoadGitArgs()
  let git_files = system('git ls-files | egrep -v ''\.(png|jpg)$''')
  echom git_files
endfunction

command! ArgArgLoadGitArgs :call argarg#LoadGitArgs()
