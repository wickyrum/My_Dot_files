# Define color variables using tput
orange=$(tput setaf 202)
blue=$(tput setaf 39)
green=$(tput setaf 83)
white=$(tput setaf 255)
purple=$(tput setaf 141)   # Purple for username
cyan=$(tput setaf 51)      # Cyan for '@'
magenta=$(tput setaf 204)  # Magenta for hostname
end_color=$(tput sgr0)

# Define PS1 prompt
PS1="\[$orange\]╭─"        # Top-left corner and start of the box (Orange)
PS1+="\[$blue\]\w"         # Current directory (Blue)
PS1+="\[$purple\] \u"      # Username (Purple)
PS1+="\[$cyan\]@\[$magenta\]\h" # '@' and Hostname (Cyan and Magenta)
PS1+="\[$green\]$(git branch 2>/dev/null | grep "^*" | colrm 1 2)" # Git branch (Green)
PS1+="\n\[$orange\]╰─"     # Bottom-left corner (Orange)
PS1+="\[$white\]➤ "        # Prompt arrow (White)
PS1+="\[$end_color\]"      # Reset color

# Example alias definitions
alias lsd='ls -la | grep "d"'
alias ..='cd ..'
alias ...='cd ../..'

