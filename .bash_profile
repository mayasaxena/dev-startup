if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
  __git_complete gc _git_checkout
fi

alias gs='git status'
alias gb='git branch'
alias gl='git log'
alias gc='git checkout'

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias modifyProfile='atom ~/.bash_profile'
alias saveProfile='source ~/.bash_profile'
alias gitconfig='atom ~/.gitconfig'

alias unfuckxcode='rm -rf ~/Library/Developer/Xcode/DerivedData; echo -e "\xF0\x9F\x94\xA5 BURN IT ALL\xF0\x9F\x94\xA5"'
