#
# Main
#

declare -i X_APP_NAMESPACE_X_status=1
declare X_APP_NAMESPACE_X_option=''
declare X_APP_NAMESPACE_X_command=''
declare X_APP_NAMESPACE_X_command_tag=''
declare X_APP_NAMESPACE_X_X_OPTION_X=''
declare X_APP_NAMESPACE_X_X_FLAG_X='0'

(($# == 0)) && X_APP_NAMESPACE_X_help && exit 1
while getopts ':xwy:zh' X_APP_NAMESPACE_X_option; do
  case "$X_APP_NAMESPACE_X_option" in
  x)
    X_APP_NAMESPACE_X_command='X_APP_NAMESPACE_X_X_FUNCTION_COMMAND1_X'
    X_APP_NAMESPACE_X_command_tag='X_APP_NAMESPACE_X_X_FUNCTION_COMMAND1_TAG_X'
    ;;
  w)
    X_APP_NAMESPACE_X_command='X_APP_NAMESPACE_X_X_FUNCTION_COMMAND2_X'
    X_APP_NAMESPACE_X_command_tag='X_APP_NAMESPACE_X_X_FUNCTION_COMMAND2_TAG_X'
    ;;
  y) X_APP_NAMESPACE_X_X_OPTION_X="$OPTARG" ;;
  z) X_APP_NAMESPACE_X_X_FLAG_X='1' ;;
  h) X_APP_NAMESPACE_X_help && exit 0 ;;
  *) X_APP_NAMESPACE_X_help && exit 1 ;;
  esac
done
X_APP_NAMESPACE_X_setup_globals
X_APP_NAMESPACE_X_check_requirements || exit 1

bl64_msg_show_batch_start "$X_APP_NAMESPACE_X_command_tag"
case "$X_APP_NAMESPACE_X_command" in
'X_APP_NAMESPACE_X_X_FUNCTION_COMMAND1_X') "$X_APP_NAMESPACE_X_command" "$X_APP_NAMESPACE_X_X_FLAG_X" "$X_APP_NAMESPACE_X_X_OPTION_X" ;;
'X_APP_NAMESPACE_X_X_FUNCTION_COMMAND2_X') "$X_APP_NAMESPACE_X_command" ;;
*) bl64_check_show_undefined "$X_APP_NAMESPACE_X_command" ;;
esac
X_APP_NAMESPACE_X_status=$?

bl64_msg_show_batch_finish $X_APP_NAMESPACE_X_status "$X_APP_NAMESPACE_X_command_tag"
exit $X_APP_NAMESPACE_X_status
