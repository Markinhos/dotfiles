if status is-interactive
    # Commands to run in interactive sessions can go here
end


set -Ux N_PREFIX $HOME/.n
set -Ux SSH_AUTH_SOCK $HOME/.1password
# set -Ux PNPM_HOME $HOME/Library/pnpm

# Aliases
alias l "lsd"
alias oo "source ~/Projects/pleo-io/pleo/bin/oo.fish"
abbr ggb "./gradlew build"
abbr ggp "./gradlew publishToMavenLocal"

# Paths
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/Cellar/openjdk@17/17.0.2/libexec/openjdk.jdk/Contents/Home
fish_add_path /opt/homebrew/opt/python@3.12/libexec/bin
fish_add_path $VOLTA_HOME/bin
fish_add_path $HOME/Library/Application Support/JetBrains/Toolbox/scripts
fish_add_path /usr/local/go/bin
fish_add_path $HOME/.deno/bin
fish_add_path $HOME/.local/bin
fish_add_path /opt/homebrew/sbin
op completion fish | source

pyenv init - | source
fzf --fish | source
atuin init fish | source
~/.local/bin/mise activate fish | source
zoxide init fish | source
direnv hook fish | source

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
set --export --prepend PATH "/Users/marcos.arranz/.rd/bin"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# bun
set --export BUN_INSTALL "$HOME/Projects/pleo-io/io/pleo-io-rest/build"
set --export PATH $BUN_INSTALL/bin $PATH

# bun
set --export BUN_INSTALL "$HOME/Projects/pleo-io/styx/pleo-styx-rest/build"
set --export PATH $BUN_INSTALL/bin $PATH

# pnpm
# set -gx PNPM_HOME "/Users/marcos.arranz/Library/pnpm"
# if not string match -q -- $PNPM_HOME $PATH
#  set -gx PATH "$PNPM_HOME" $PATH
# end
# pnpm end

# sset -x N_PREFIX "$HOME/.n"; contains "$N_PREFIX/bin" $PATH; or set -a PATH "$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

if test -f ~/.config/fish/fish_secrets
    source ~/.config/fish/fish_secrets
end

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
