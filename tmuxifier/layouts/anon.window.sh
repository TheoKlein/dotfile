# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
window_root "~/Ubun/vps.ubun.tw"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "anon"

# Split window into panes.
#split_v 20
split_h 20
split_v 20

# Run commands.
run_cmd "vim" 0    # runs in active pane
run_cmd "git status" 1  # runs in pane 1
run_cmd "glances --disable-load" 2

# Paste text
#send_keys "top"    # paste into active pane
#send_keys "date" 1 # paste into pane 1
send_keys "4" 2
send_keys "l" 2
send_keys "2" 2
send_keys "z" 2

# Set active pane.
select_pane 0
