#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Command aliases:
alias ls='ls --color=auto -la'
alias dir='dir --color=auto -la'
alias grep='grep --color=auto'
alias clear='printf \\033[2J\\033[3J\\033[H'
alias cls='printf \\033[2J\\033[3J\\033[H'
alias clean='sudo rm -fr /tmp/* && sudo rm -fr ~/.cache/*'
alias find='sudo find / -name'
alias shred='shred -funz 5'
export EDITOR="code"
export VISUAL="code"
# export EDITOR="nvim"
# export VISUAL="nvim"
export FILE_MANAGER="yazi"
export GPG_TTY=$(tty)
export QT_QPA_PLATFORM=wayland

# Terminals:
PS1='\n\033[32m┌──(\033[34m\u@\h\033[32m)─[\033[m\033[1m\w\033[m\033[32m]─{\033[36m $(date +"%H:%M:%S | %Y/%m/%d")\033[m\033[32m}\n\033[32m└─\033[34m$\033[m ' # Kali type + Clock.
# PS1='\n' # Minimalist 1 type 1.
# PS1='\n> ' # Minimalist 2 type 1.
# PS1='\n\033[34m>\033[m ' # Minimalist 2 type 2.
# PS1='\n\033[31m>\033[m ' # Minimalist 2 type 3.
# PS1='\n\033[32m>\033[m ' # Minimalist 2 type 4.
# PS1='\n$ ' # Minimalist 3 type 1.
# PS1='\n\033[34m$\033[m ' # Minimalist 3 type 2.
# PS1='\n\033[31m$\033[m ' # Minimalist 3 type 3.
# PS1='\n\033[32m$\033[m ' # Minimalist 3 type 4.
# PS1='\n[\u@\h \W]$ ' # Arch Linux normal terminal config.
# PS1='\n\033[32m\u@\h\033[m:\033[34m\w\033[m$ ' # Ubuntu type.

# Auto install Bash Completion when starts terminal:
if ! [ -f /usr/share/bash-completion/bash_completion ]; then
	echo Bash Completion is not installed, starting install...
	sudo pacman -S bash-completion
	clear
fi

# Auto install GNU C Compiler when starts terminal:
if ! [ -f /usr/bin/gcc ]; then
	echo GNU C Compiler is not installed, starting install...
	sudo pacman -S gcc
	clear
fi

# Auto install C Make when starts terminal:
if ! [ -f /usr/bin/cmake ]; then
	echo C Make is not installed, starting install...
	sudo pacman -S cmake
	clear
fi

# Auto install Ninja when starts terminal:
if ! [ -f /usr/bin/ninja ]; then
	echo Make is not installed, starting install...
	sudo pacman -S ninja
	clear
fi

# Auto install Tree when starts terminal:
if ! [ -f /usr/bin/tree ]; then
	echo Tree is not installed, starting install...
	sudo pacman -S tree
	clear
fi

# Auto install Less when starts terminal:
if ! [ -f /usr/bin/less ]; then
	echo Less is not installed, starting install...
	sudo pacman -S less
	clear
fi

# Auto install Man when starts terminal:
if ! [ -f /usr/bin/man ]; then
	echo Man is not installed, starting install...
	sudo pacman -S man
	clear
fi

# Auto install Starship when starts terminal:
if ! [ -f /usr/bin/starship ]; then
	echo Starship is not installed, starting install...
	sudo pacman -S starship
	clear
fi

# Auto install NCDU when starts terminal:
if ! [ -f /usr/bin/ncdu ]; then
	echo NCDU is not installed, starting install...
	sudo pacman -S ncdu
	clear
fi

# Auto install XDG User Dirs when starts terminal:
if ! [ -f /usr/bin/xdg-user-dirs-update ]; then
	echo XDG User Dirs is not installed, starting install...
	sudo pacman -S xdg-user-dirs
	clear
fi

# Auto install Fast Fetch when starts terminal:
if ! [ -f /usr/bin/fastfetch ]; then
	echo Fastfetch is not installed, starting install...
	sudo pacman -S fastfetch
	clear
fi

# Auto install GNU PG when starts terminal:
if ! [ -f /usr/bin/gpg ]; then
	echo GNU PG is not installed, starting install...
	sudo pacman -S gnupg
	clear
fi

# Auto install AGE when starts terminal:
if ! [ -f /usr/bin/age ]; then
	echo AGE is not installed, starting install...
	sudo pacman -S age
	clear
fi

# Auto install Open SSH when starts terminal:
if ! [ -f /usr/bin/ssh ]; then
	echo Open SSH is not installed, starting install...
	sudo pacman -S openssh
	clear
fi

# Auto install SL when starts terminal:
if ! [ -f /usr/bin/sl ]; then
	echo SL is not installed, starting install...
	sudo pacman -S sl
	clear
fi

# Auto install Show Me The Key when starts terminal:
if ! [ -f /usr/bin/showmethekey-gtk ]; then
	echo Show Me The Key is not installed, starting install...
	sudo pacman -S showmethekey
	clear
fi

# Auto install Yet Another Yourgut when starts terminal:
if ! [ -f /usr/bin/yay ]; then
	echo Yet Another Yourgut is not installed, starting install...
	sudo pacman -S --needed base-devel git
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si
	cd ..
	rm -fr ./yay
	clear
fi

# Auto install Ascii when starts terminal:
if ! [ -f /usr/bin/ascii ]; then
	echo Ascii is not installed, starting install...
	sudo pacman -S ascii
	clear
fi

# Auto install Figlet when starts terminal:
if ! [ -f /usr/bin/figlet ]; then
	echo Figlet is not installed, starting install...
	sudo pacman -S figlet
	clear
fi

# Auto install Cow Say when starts terminal:
if ! [ -f /usr/bin/cowsay ]; then
	echo Cow Say is not installed, starting install...
	sudo pacman -S cowsay
	clear
fi

# Auto install Toilet when starts terminal:
if ! [ -f /usr/bin/toilet ]; then
	echo Toilet is not installed, starting install...
	sudo pacman -S toilet
	clear
fi

# Auto install CMatrix when starts terminal:
if ! [ -f /usr/bin/cmatrix ]; then
	echo CMatrix is not installed, starting install...
	sudo pacman -S cmatrix
	clear
fi

# Auto install AsciiQuarium when starts terminal:
if ! [ -f /usr/bin/asciiquarium ]; then
	echo Asciiquarium is not installed, starting install...
	sudo pacman -S asciiquarium
	clear
fi

# Auto install N Snake when starts terminal:
if ! [ -f /usr/bin/nsnake ]; then
	echo N Snake is not installed, starting install...
	yay -S nsnake
	clear
fi

# Auto install Vi Tetris when starts terminal:
if ! [ -f /usr/bin/vitetris ]; then
	echo Vi Tetris is not installed, starting install...
	yay -S vitetris
	clear
fi

# Auto install Bastet when starts terminal:
if ! [ -f /usr/bin/bastet ]; then
	echo Bastet is not installed, starting install...
	yay -S bastet
	clear
fi

# Auto install GNU Chess when starts terminal:
if ! [ -f /usr/bin/gnuchess ]; then
	echo GNU Chess is not installed, starting install...
	sudo pacman -S gnuchess
	clear
fi

# Auto install Git when starts terminal:
if ! [ -f /usr/bin/git ]; then
	echo Git is not installed, starting install...
	sudo pacman -S git
	clear
fi

# Auto install Github CLI when starts terminal:
if ! [ -f /usr/bin/gh ]; then
	echo Github CLI is not installed, starting install...
	sudo pacman -S github-cli
	clear
fi

# Auto install flatpak when starts terminal:
if ! [ -f /usr/bin/flatpak ]; then
	echo Flatpak is not installed, starting install...
	sudo pacman -S flatpak
	clear
fi

# Auto install Top when starts terminal:
if ! [ -f /usr/bin/top ]; then
	echo Top is not installed, starting install...
	sudo pacman -S top
	clear
fi

# Auto install H Top when starts terminal:
if ! [ -f /usr/bin/htop ]; then
	echo H Top is not installed, starting install...
	sudo pacman -S htop
	clear
fi

# Auto install B Top when starts terminal:
if ! [ -f /usr/bin/btop ]; then
	echo B Top is not installed, starting install...
	sudo pacman -S btop
	clear
fi

# Auto install Visual Studio Code when starts terminal:
if ! [ -f /usr/bin/visual-studio-code-electron ]; then
	echo Visual Studio Code is not installed, starting install...
	yay -S visual-studio-code-electron-bin
	clear
fi

# Auto install NeoViM when starts terminal:
if ! [ -f /usr/bin/nvim ]; then
	echo NeoViM is not installed, starting install...
	sudo pacman -S neovim
	clear
fi

# Auto install Yazi when starts terminal:
if ! [ -f /usr/bin/yazi ]; then
	echo Yazi is not installed, starting install...
	sudo pacman -S yazi
	clear
fi

# Auto install Ventoy when starts terminal:
if ! [ -f /usr/bin/ventoy ]; then
	echo Ventoy is not installed, starting install...
	yay -S ventoy-bin
	clear
fi

# Auto install W Get when starts terminal:
if ! [ -f /usr/bin/wget ]; then
	echo W Get is not installed, starting install...
	sudo pacman -S wget
	clear
fi

# Clear terminal after verifications set up bash completions and fast fetch:
if [ -r /usr/share/bash-completion/bash_completion ]; then
	. /usr/share/bash-completion/bash_completion
fi

cd ~
clear
fastfetch
