#!/bin/sh

if [[ ! ~/.dotfiles ]]; then
	echo Directory ~/.dotfiles does not exist
	exit 1
fi

# xinit
XINIT_PATH=~/.xinitrc
XINIT_PATH_BACKUP=~/.dotfiles

if [[ $XINIT_PATH ]]; then
	cp $XINIT_PATH $XINIT_PATH_BACKUP
	echo $XINIT_PATH '->' $XINIT_PATH_BACKUP
fi

# zsh
ZSH0_PATH=~/.zshrc
ZSH0_PATH_BACKUP=~/.dotfiles

if [[ $ZSH0_PATH ]]; then
	cp $ZSH0_PATH $ZSH0_PATH_BACKUP
	echo $ZSH0_PATH '->' $ZSH0_PATH_BACKUP
fi


ZSH1_PATH=~/.zprofile
ZSH1_PATH_BACKUP=~/.dotfiles

if [[ $ZSH1_PATH ]]; then
	cp $ZSH1_PATH $ZSH1_PATH_BACKUP
	echo $ZSH1_PATH '->' $ZSH1_PATH_BACKUP
fi

# alacritty
ALACRITTY_PATH=~/.config/alacritty/alacritty.yml
ALACRITTY_PATH_BACKUP=~/.dotfiles/.config/alacritty

if [[ $ALACRITTY_PATH ]]; then
	cp $ALACRITTY_PATH $ALACRITTY_PATH_BACKUP
	echo $ALACRITTY_PATH '->' $ALACRITTY_PATH_BACKUP
fi

# bspwm

BSPWM_PATH=~/.config/bspwm/bspwmrc
BSPWM_PATH_BACKUP=~/.dotfiles/.config/bspwm

if [[ $BSPWM_PATH ]]; then
	cp $BSPWM_PATH $BSPWM_PATH_BACKUP
	echo $BSPWM_PATH '->' $BSPWM_PATH_BACKUP
fi

# picom

PICOM_PATH=~/.config/picom/picom.conf
PICOM_PATH_BACKUP=~/.dotfiles/.config/picom

if [[ $PICOM_PATH ]]; then
	cp $PICOM_PATH $PICOM_PATH_BACKUP
	echo $PICOM_PATH '->' $PICOM_PATH_BACKUP
fi

# sxhkd 

SXHKD_PATH=~/.config/sxhkd/sxhkdrc
SXHKD_PATH_BACKUP=~/.dotfiles/.config/sxhkd

if [[ $SXHKD_PATH ]]; then
	cp $SXHKD_PATH $SXHKD_PATH_BACKUP
	echo $SXHKD_PATH '->' $SXHKD_PATH_BACKUP
fi

# polybar 

POLYBAR_PATH=~/.config/polybar/.
POLYBAR_PATH_BACKUP=~/.dotfiles/.config/polybar

if [[ $POLYBAR_PATH ]]; then
	cp -r $POLYBAR_PATH $POLYBAR_PATH_BACKUP
	echo $POLYBAR_PATH '->' $POLYBAR_PATH_BACKUP
fi


# rofi 

ROFI_PATH=~/.config/rofi/config.rasi
ROFI_PATH_BACKUP=~/.dotfiles/.config/rofi

if [[ $ROFI_PATH ]]; then
	cp $ROFI_PATH $ROFI_PATH_BACKUP
	echo $ROFI_PATH '->' $ROFI_PATH_BACKUP
fi


# sound control 

SOUND_PATH=~/.config/soundcontrol.sh
SOUND_PATH_BACKUP=~/.dotfiles/.config

if [[ $SOUND_PATH ]]; then
	cp $SOUND_PATH $SOUND_PATH_BACKUP
	echo $SOUND_PATH '->' $SOUND_PATH_BACKUP
fi

# neovim 

NVIM0_PATH=~/.config/nvim/init.vim
NVIM0_PATH_BACKUP=~/.dotfiles/.config/nvim

if [[ $NVIM0_PATH ]]; then
	cp $NVIM0_PATH $NVIM0_PATH_BACKUP
	echo $NVIM0_PATH '->' $NVIM0_PATH_BACKUP
fi

NVIM1_PATH=~/.config/nvim/autoload/plug.vim
NVIM1_PATH_BACKUP=~/.dotfiles/.config/nvim/autoload

if [[ $NVIM1_PATH ]]; then
	cp $NVIM1_PATH $NVIM1_PATH_BACKUP
echo $NVIM1_PATH '->' $NVIM1_PATH_BACKUP
fi

NVIM2_PATH=~/.config/nvim/vim-plug/plugins.vim
NVIM2_PATH_BACKUP=~/.dotfiles/.config/nvim/vim-plug

if [[ $NVIM2_PATH ]]; then
	cp $NVIM2_PATH $NVIM2_PATH_BACKUP
echo $NVIM2_PATH '->' $NVIM2_PATH_BACKUP
fi


# zathura 

ZATHURA_PATH=~/.config/zathura/zathurarc
ZATHURA_PATH_BACKUP=~/.dotfiles/.config/zathura

if [[ $ZATHURA_PATH ]]; then
	cp $ZATHURA_PATH $ZATHURA_PATH_BACKUP
	echo $ZATHURA_PATH '->' $ZATHURA_PATH_BACKUP
fi



# push changes
git -C ~/.dotfiles add .
git -C ~/.dotfiles commit -m 'Upload'
git -C ~/.dotfiles push -u origin main
