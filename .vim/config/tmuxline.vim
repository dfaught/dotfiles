let g:tmuxline_preset = {
  \'a'      : '#S',
  \'win'      : ['#I', '#W'],
  \'cwin'      : ['#I', '#W'],
  \'x'      : ['%x', '%R'],
  \'y'      : ['#(uptime | cut -d " " -f 4,5,6,7)', '#(~/.tmux/plugins/tmux-net-speed/scripts/net_speed.sh)'],
  \'z'      : '#H',
  \'options': {
  \'status-justify' : 'left'}}

