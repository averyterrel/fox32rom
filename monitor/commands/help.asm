; help command

monitor_shell_help_command_string: data.strz "help"

monitor_shell_help_command:
    mov r0, monitor_shell_help_text
    call print_string_to_monitor
    call redraw_monitor_console
    ret

monitor_shell_help_text:
    data.str "command | description" data.8 10
    data.str "------- | -----------" data.8 10
    data.str "brk     | add breakpoint $1 (optional) at address $0;" data.8 10
    data.str "        | list breakpoints if no arguments provided" data.8 10
    data.str "brkrm   | remove breakpoint $0" data.8 10
    data.str "exit    | exit the monitor" data.8 10
    data.str "help    | display this help text" data.8 10
    data.str "jump    | jump to address $0" data.8 10
    data.str "list    | list memory contents starting at address $0" data.8 10
    data.str "load    | load disk $0's sector $1 to buffer at address $2 of size $3 sectors" data.8 10
    data.str "reg     | list contents of all registers" data.8 10
    data.str "save    | write disk $0's sector $1 from buffer at address $2 of size $3 sectors" data.8 10
    data.str "set.SZ  | set [$0] to $1; equivalent to `mov.SZ [$0], $1`" data.8 10
    data.8 0
