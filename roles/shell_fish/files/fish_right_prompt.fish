function fish_right_prompt -d "Write out the prompt"
    set -l current_status $status
    set -l status_if_not_0 ''
    if test $current_status -ne 0
        set status_if_not_0 (set_color red)"[$current_status] "(set_color normal)
    end

    set -l current_datetime (date '+%H:%M:%S')

    printf '\n%s (%s ms) %s' $current_datetime $CMD_DURATION $status_if_not_0
end
