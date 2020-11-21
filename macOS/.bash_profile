# Redirect to profile to bashrc file (if exist)
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# Check "custom_command" file
# if exist call it

if [ -f ~/.custom_commands.sh ]; then
	source ~/.custom_commands.sh
fi
