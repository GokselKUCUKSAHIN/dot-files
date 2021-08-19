HOST_NAME="🍎MacBook Air"

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"

#export PS1="\e[0;33m\@ \u @ \e[m\e[0;34m\w\e[m > "
#export PS1="\u > "
#export PS1="\u \w > "
#export PS1="\u @ \w > "
export CLICOLOR=1
#export LS_COLORS="$(vivid generate snazzy)"
export LSCOLORS=GxGxcxdxBxexexDxGxCxcx
#export LSCOLORS=GxFxCxDxBxegedabagaced

yellow=$(tput setaf 226);
red=$(tput setaf 160);
purple=$(tput setaf 177); #92-93
green=$(tput setaf 154); 
white=$(tput setaf 15);
reset=$(tput sgr0);

emojis=( "👾 " "🌐 " "🌍 " "💾 " "🌎 " "🌚🌝" "❄️  " "🕹  " )

EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}

print_before_the_prompt () {
    dir=$PWD
    _usr=$USER
    dir=${dir/"$HOME"/"~"}
    printf "\n%s: (${green}%s${reset}) ${yellow}@ ${purple}%s\n" "$HOST_NAME" "$_usr" "$dir"
}

PROMPT_COMMAND=print_before_the_prompt
PS1="$EMOJI\[${green}\] > \[${reset}\]"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
