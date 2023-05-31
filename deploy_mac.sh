#!/bin/bash

# Install xCode cli tools
echo "Installing commandline tools..."
xcode-select --install && echo "Installing Brew..."

# Install Brew

/bin/zsh -c "$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)" && brew analytics off

# Brew Taps
echo "Installing Brew Formulae..."
brew tap homebrew/cask-fonts
brew tap FelixKratz/formulae

# downloader 
brew install aria2
brew install wget
#tools for clang
brew install gsl       #The GNU Scientific Library (GSL) is a numerical library for C and C++ programmers.
brew install llvm      # copmplier for mac
brew install gcc       # gcc just gcc
brew install ccls      # ccls, which originates from cquery, is a C/C++/Objective-C language server.
brew install boost     # Boost provides free peer-reviewed portable C++ source libraries.
brew install libomp    # LLVM's OpenMP runtime library
brew install armadillo # Armadillo is a high quality linear algebra library (matrix maths) for the C++ language
# editor 
brew install neovim
brew install tree
# python
brew install python@3.10
brew install pyenv          # python vesion manager
brew install pyenv-virtualenv 
# useful tools
brew install jq      # json parse
brew install gh      # GitHub command-line tool
brew install ripgrep # a pro grep

brew install proxychains-ng # proxy commandline
brew install stow # congig dotfiles
brew install tmux # session manager
# brew install yadm # windows manager like i3wm
brew install iterm2 # termial
brew install neofetch     # system environment show
brew install wireguard-go #This is an implementation of WireGuard in Go.
brew install dooit    # TUI todo manager
# zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install zsh-vi-mode # use vim in zsh

brew install svim # operate safari like vim 
brew install sf-symbols # SF Symbols is the system icon framework
brew install switchaudio-osx
brew install lazygit
brew install btop
brew install firefox 
brew install ipfs
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install chezmoi
# Brew Casks
echo "Installing Brew Casks..."
brew install --cask monitorcontrol
brew install --cask sloth
brew install --cask zoom
brew install --cask hex-fiend
brew install --cask cutter
brew install --cask font-hack-nerd-font
brew install --cask iina
brew install --cask finalshell
brew install --cask font-hack-nerd-font
brew install --cask google-chrome
brew install --cask mactex
brew install --cask sf-symbols
brew install --cask visual-studio-code
brew install --cask steam
brew install --cask wechat
brew install --cask zerotier-one

# Mac App Store Apps
echo "Installing Mac App Store Apps..."
mas install 1451685025 #Wireguard
mas install 497799835  #xCode

# macOS Settings
echo "Changing macOS defaults..."
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.spaces spans-displays -bool false
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock "mru-spaces" -bool "false"
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
defaults write com.apple.LaunchServices LSQuarantine -bool false
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write NSGlobalDomain _HIHideMenuBar -bool true
defaults write NSGlobalDomain AppleHighlightColor -string "0.65098 0.85490 0.58431"
defaults write NSGlobalDomain AppleAccentColor -int 1
defaults write com.apple.screencapture location -string "$HOME/Desktop"
defaults write com.apple.screencapture disable-shadow -bool true
defaults write com.apple.screencapture type -string "png"
defaults write com.apple.finder DisableAllAnimations -bool true
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false
defaults write com.apple.Finder AppleShowAllFiles -bool true
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
defaults write com.apple.finder ShowStatusBar -bool false
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool YES
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false


# Installing Fonts
git clone git@github.com:shaunsingh/SFMono-Nerd-Font-Ligaturized.git /tmp/SFMono_Nerd_Font
mv /tmp/SFMono_Nerd_Font/* $HOME/Library/Fonts
rm -rf /tmp/SFMono_Nerd_Font/

