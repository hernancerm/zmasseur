resources='test/golden'

typeset -A test_cases=(
  smoke
  './zmasseur test/src/main.zsh'
  check_pass_stderr
  './zmasseur --check test/src/main.zsh 2>&1'
  check_fail_stderr
  './zmasseur --check test/src/main_with_errors.zsh 2>&1'
  check_pass_exit_code
  './zmasseur --check test/src/main.zsh 2>/dev/null; echo $?'
  check_fail_exit_code
  './zmasseur --check test/src/main_with_errors.zsh 2>/dev/null; echo $?'
)
