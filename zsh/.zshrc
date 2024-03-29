# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(sudo git web-search history zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Preferred editor
export EDITOR='nvim'

# aliasas
# easy cd
alias up="cd .."
alias des="cd ~/Desktop"
alias dev="cd ~/Desktop/development"
alias dot="cd ~/dotfiles"
alias notes="cd ~/Desktop/notes"
alias testP="cd ~/Desktop/test/python"
alias testJ="cd ~/Desktop/test/java"
alias testJS="cd ~/Desktop/test/JS"

# py
alias src="source venv/bin/activate"
alias csrc="python3 -m venv venv"

# programs
alias v="nvim"

# others
alias fp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
alias cat="bat"

# Better colour for directory in ls
LS_COLORS=$LS_COLORS:'di=1;36:' ; export LS_COLORS
# style for fzf-tab ls
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 70% --layout=reverse --border
  --color fg:#ebdbb2,bg:#282828,hl:#fabd2f,fg+:#ebdbb2,bg+:#3c3836,hl+:#fabd2f
  --color info:#83a598,prompt:#bdae93,spinner:#fabd2f,pointer:#83a598,marker:#fe8019,header:#665c54
'
# Setting ag as the default source for fzf
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# fzf-tab style
zstyle ":fzf-tab:*" fzf-flags --height=70% --layout=reverse --border \
--color "fg:#ebdbb2,bg:#282828,hl:#fabd2f,fg+:#ebdbb2,bg+:#3c3836,hl+:#fabd2f" \
--color "info:#83a598,prompt:#bdae93,spinner:#fabd2f,pointer:#83a598,marker:#fe8019,header:#665c54"

# p10k theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Replaces zsh tab completion with fzf
source ~/.fzf-tab/fzf-tab.plugin.zsh
