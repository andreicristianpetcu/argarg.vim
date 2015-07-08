"git ls-files | egrep -v '\.(png|jpg)$'
":argdo silent! %Subvert/Invitation/ConfirmationCode/ge | update | redraw!

function! argarg#LoadGitArgs()
  call system('git rev-parse')
  if ! v:shell_error
    let existing_args_count = argc()
    if existing_args_count > 0
      argdelete *
    endif
    let ignored_extensions = "png|jpg|jpeg|pdf|gitignore|ruby-version|dockerignore|ttf|tifi|db|keep|jar|npm_cache"
    let ignored_files = "target|npm_cache|bower_cache|node_components|tags|"
    let git_files = system('git ls-files | egrep -v ''\.(' . ignored_extensions . ')$''')
    " | egrep -v ' . ignored_files . '')

    for git_file in split(git_files)
      execute "silent! argadd " git_file
    endfor
  endif
endfunction
command! ArgArgLoadGitArgs :call argarg#LoadGitArgs()
ArgArgLoadGitArgs

