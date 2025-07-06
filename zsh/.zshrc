# Path to your oh-my-zsh installation.
export ZSH="/home/oliver/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="refined"


# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
	rust
	sudo
	history
	zsh-autosuggestions
	zsh-syntax-highlighting
	)


source $ZSH/oh-my-zsh.sh

# User configuration

# Include hidden files in auto complete
setopt globdots

# Enable zoxide
eval "$(zoxide init --cmd cd zsh)"

# Enable nvm (node version manager)
source /usr/share/nvm/init-nvm.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias icat="kitty +kitten icat"
alias vim=nvim
alias ssh="kitten ssh"

# Configure path
export PATH=$PATH:$HOME/.local/bin/
export PATH=$PATH:$HOME/.cargo/bin
export PATH=/home/oliver/tools/android-studio/jbr/bin/:$PATH
export ANDROID_HOME=/home/oliver/tools/android-sdk
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator
export CAPACITOR_ANDROID_STUDIO_PATH=/home/oliver/tools/android-studio/bin/studio.sh
export PATH="/home/oliver/tools/flutter/bin/:$PATH"
