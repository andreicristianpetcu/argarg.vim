"git ls-files | egrep -v '\.(png|jpg)$'

function! argarg#LoadGitArgs()
  argdelete *
  let git_files = system('git ls-files | egrep -v ''\.(png|jpg)$''')
  for git_file in split(git_files)
    echom git_file
    argadd git_file
  endfor
endfunction

command! ArgArgLoadGitArgs :call argarg#LoadGitArgs()
