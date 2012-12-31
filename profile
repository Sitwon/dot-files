# ~/.bashrc is a symlink to this file

# Makes 'less' work nicely (especially with git)
export LESS="-FRSX"

# Set less as the default pager
export PAGER="less"

# Use Chrome as the default browser
export BROWSER="google-chrome"

# Enable UTF-8 in the shell
export LANG="en_US.UTF-8"

# Required for applications that use XDG local directories
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"

# Set vim as the default visual editor
export VISUAL="vim"

# If CLASSPATH is not set, set it to "."
export CLASSPATH=${CLASSPATH:-"."}

#ulimit -l unlimited

# Amazon AWS tools
#export EC2_HOME="/home/adam/AWS/ec2-api-tools-1.3-26369"
#export EC2_AMITOOL_HOME="/home/adam/AWS/ec2-ami-tools-1.3-26357"
#export PATH=$PATH:${EC2_AMITOOL_HOME}/bin:${EC2_HOME}/bin

# Adds "~/.bin" to the beginning of my $PATH. I use it for short utility
# scripts, binaries I don't want to install globally, and wrapper scripts that I
# to override the default binary. Using aliases is a valid alternative.
export PATH=/home/adam/.bin:$PATH

# Enable some bash-completion for git I found on Github
source /home/adam/.git-completion.bash

# Re-writes the prompt with the current git branch
export PS1='\u@\h:\w`git branch 2> /dev/null | sed -f /home/adam/.parse_git_branch.sed`\$ '

# Putting Android SDK in the path
export PATH=$PATH:~/src/phone/android-sdk-linux/tools:~/src/phone/android-sdk-linux/platform-tools

