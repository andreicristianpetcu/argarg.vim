"git ls-files | egrep -v '\.(png|jpg)$'

function! argarg#LoadGitArgs()
  let existing_args_count = argc()
  if existing_args_count > 0
    argdelete *
  endif
  let ignored_files = "png|jpg|jpeg|pdf|gitignore|ruby-version|dockerignore|ttf|tifi|db|keep"
  let git_files = system('git ls-files | egrep -v ''\.(' . ignored_files  .')$''')

  for git_file in split(git_files)
    echom git_file
    execute "argadd " git_file
  endfor
endfunction

command! ArgArgLoadGitArgs :call argarg#LoadGitArgs()
