# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

set -gx LOAD_PATH "$HOME/.config/fish/load"
set -gx ALIAS_PATH "$HOME/.config/fish/alias"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

for file in (ls $LOAD_PATH)
  source $LOAD_PATH/$file
end 

for file in (ls $ALIAS_PATH)
  source $ALIAS_PATH/$file
end 
