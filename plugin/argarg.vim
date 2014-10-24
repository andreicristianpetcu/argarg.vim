"git ls-files | egrep -v '\.(png|jpg)$'
":argdo silent! %Subvert/Invitation/ConfirmationCode/ge | update | redraw!

function! argarg#LoadGitArgs()
  let existing_args_count = argc()
  if existing_args_count > 0
    argdelete *
  endif
  let ignored_files = "png|jpg|jpeg|pdf|gitignore|ruby-version|dockerignore|ttf|tifi|db|keep|jar"
  let git_files = system('git ls-files | egrep -v ''\.(' . ignored_files  .')$''')

  for git_file in split(git_files)
    execute "silent! argadd " git_file
  endfor
endfunction

function! argarg#FuzzySearch()
  " Abolish -cmdline authorit{y,ies}Type test"
  let existing_args_count = exe "abbreviate"
endfunction

function! argarg#SampleData()
  Abolish -cmdline authorit{y,ies}Type test"
endfunction


command! ArgArgLoadGitArgs :call argarg#LoadGitArgs()
command! ArgArgFuzzySearch :call argarg#FuzzySearch()
command! ArgArgSampleData :call argarg#SampleData()
