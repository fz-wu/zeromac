#!/bin/bash

# Install xCode cli tools
echo "Installing commandline tools..."
xcode-select --install

# Install Brew
echo "Installing Brew..."
/bin/zsh -c "$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)" speed
brew analytics off

# Brew Taps
echo "Installing Brew Formulae..."
brew tap homebrew/cask-fonts
brew tap FelixKratz/formulae

# Brew Formulae
brew install aria2
brew install gsl       #The GNU Scientific Library (GSL) is a numerical library for C and C++ programmers.
brew install llvm      # copmplier for mac
brew install gcc       # gcc just gcc
brew install ccls      # ccls, which originates from cquery, is a C/C++/Objective-C language server.
brew install boost     # Boost provides free peer-reviewed portable C++ source libraries.
brew install libomp    # LLVM's OpenMP runtime library
brew install armadillo # Armadillo is a high quality linear algebra library (matrix maths) for the C++ language
brew install neovim
brew install tree
brew install wget
brew install jq      # json parse
brew install gh      # GitHub command-line tool
brew install ripgrep # a pro grep
brew install rename
brew install pyenv          # python vesion manager
brew install proxychains-ng # proxy commandline
brew install python@3.10
brew install stow # congig dotfiles
brew install tmux # session manager
# brew install bear # notepad
# brew install yadm
brew install neofetch     # system environment show
brew install wireguard-go #This is an implementation of WireGuard in Go.
brew install starship # starship
brew install dooit    # TUI todo manager
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install svim
brew install sf-symbols # SF Symbols is the system icon framework
brew install switchaudio-osx
brew install lazygit
brew install btop
brew install zsh-vi-mode # use vim in zsh

# Brew Casks
echo "Installing Brew Casks..."
brew install --cask mumble
brew install --cask monitorcontrol
brew install --cask sloth
brew install --cask zoom
brew install --cask skim
brew install --cask meetingbar
brew install --cask machoview
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
mas install 1480933944 #Vimari

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

# Copying and checking out configuration files
echo "Planting Configuration Files..."
[ ! -d "$HOME/dotfiles" ] && git clone --bare git@github.com:FelixKratz/dotfiles.git $HOME/dotfiles
git --git-dir=$HOME/dotfiles/ --work-tree=$HOME checkout master

# Installing Fonts
git clone git@github.com:shaunsingh/SFMono-Nerd-Font-Ligaturized.git /tmp/SFMono_Nerd_Font
mv /tmp/SFMono_Nerd_Font/* $HOME/Library/Fonts
rm -rf /tmp/SFMono_Nerd_Font/

# SketchyBar config
brew install --cask sf-symbols
brew install switchaudio-osx
curl -L https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v1.0.4/sketchybar-app-font.ttf -o $HOME/Library/Fonts/sketchybar-app-font.ttf
brew services start sketchybar
