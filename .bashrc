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
export EDITOR="vim"
export VISUAL="vim"
export FILE_MANAGER="yazi"
export GPG_TTY=$(tty)
export QT_QPA_PLATFORM=wayland
export GDK_BACKEND=wayland
export SDL_VIDEODRIVER=wayland

# Terminals:
PS1='\n\033[32m┌──(\033[34m\u@\h\033[32m)─[\033[m\033[1m\w\033[m\033[32m]─{\033[36m $(date +"%Y-%m-%d | %H:%M:%S")\033[m\033[32m}\n\033[32m└─\033[34m$\033[m ' # Kali type + Clock.
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

# Auto install Wev when starts terminal:
if ! [ -f /usr/bin/wev ]; then
	echo Wev is not installed, starting install...
	sudo pacman -S --needed wev
	clear
fi

# Auto install Bash Completion when starts terminal:
if ! [ -f /usr/share/bash-completion/bash_completion ]; then
	echo Bash Completion is not installed, starting install...
	sudo pacman -S --needed bash-completion
	clear
fi

# Auto install GNU C Compiler when starts terminal:
if ! [ -f /usr/bin/gcc ]; then
	echo GNU C Compiler is not installed, starting install...
	sudo pacman -S --needed gcc
	clear
fi

# Auto install GNU Make when starts terminal:
if ! [ -f /usr/bin/make ]; then
	echo GNU Make is not installed, starting install...
	sudo pacman -S --needed make
	clear
fi

# Auto install CMake when starts terminal:
if ! [ -f /usr/bin/cmake ]; then
	echo C Make is not installed, starting install...
	sudo pacman -S --needed cmake
	clear
fi

# Auto install Ninja when starts terminal:
if ! [ -f /usr/bin/ninja ]; then
	echo Make is not installed, starting install...
	sudo pacman -S --needed ninja
	clear
fi

# Auto install Tree when starts terminal:
if ! [ -f /usr/bin/tree ]; then
	echo Tree is not installed, starting install...
	sudo pacman -S --needed tree
	clear
fi

# Auto install Less when starts terminal:
if ! [ -f /usr/bin/less ]; then
	echo Less is not installed, starting install...
	sudo pacman -S --needed less
	clear
fi

# Auto install Man when starts terminal:
if ! [ -f /usr/bin/man ]; then
	echo Man is not installed, starting install...
	sudo pacman -S --needed man
	clear
fi

# Auto install Starship when starts terminal:
if ! [ -f /usr/bin/starship ]; then
	echo Starship is not installed, starting install...
	sudo pacman -S --needed starship
	clear
fi

# Auto install NCDU when starts terminal:
if ! [ -f /usr/bin/ncdu ]; then
	echo NCDU is not installed, starting install...
	sudo pacman -S --needed ncdu
	clear
fi

# Auto install XDG User Dirs when starts terminal:
if ! [ -f /usr/bin/xdg-user-dirs-update ]; then
	echo XDG User Dirs is not installed, starting install...
	sudo pacman -S --needed xdg-user-dirs
	clear
fi

# Auto install Fast Fetch when starts terminal:
if ! [ -f /usr/bin/fastfetch ]; then
	echo Fastfetch is not installed, starting install...
	sudo pacman -S --needed fastfetch
	clear
fi

# Auto install GNU PG when starts terminal:
if ! [ -f /usr/bin/gpg ]; then
	echo GNU PG is not installed, starting install...
	sudo pacman -S --needed gnupg
	clear
fi

# Auto install AGE when starts terminal:
if ! [ -f /usr/bin/age ]; then
	echo AGE is not installed, starting install...
	sudo pacman -S --needed age
	clear
fi

# Auto install Open SSH when starts terminal:
if ! [ -f /usr/bin/ssh ]; then
	echo Open SSH is not installed, starting install...
	sudo pacman -S --needed openssh
	clear
fi

# Auto install SL when starts terminal:
if ! [ -f /usr/bin/sl ]; then
	echo SL is not installed, starting install...
	sudo pacman -S --needed sl
	clear
fi

# Auto install Show Me The Key when starts terminal:
if ! [ -f /usr/bin/showmethekey-gtk ]; then
	echo Show Me The Key is not installed, starting install...
	sudo pacman -S --needed showmethekey
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
	sudo pacman -S --needed ascii
	clear
fi

# Auto install Figlet when starts terminal:
if ! [ -f /usr/bin/figlet ]; then
	echo Figlet is not installed, starting install...
	sudo pacman -S --needed figlet
	clear
fi

# Auto install Cow Say when starts terminal:
if ! [ -f /usr/bin/cowsay ]; then
	echo Cow Say is not installed, starting install...
	sudo pacman -S --needed cowsay
	clear
fi

# Auto install Toilet when starts terminal:
if ! [ -f /usr/bin/toilet ]; then
	echo Toilet is not installed, starting install...
	sudo pacman -S --needed toilet
	clear
fi

# Auto install CMatrix when starts terminal:
if ! [ -f /usr/bin/cmatrix ]; then
	echo CMatrix is not installed, starting install...
	sudo pacman -S --needed cmatrix
	clear
fi

# Auto install AsciiQuarium when starts terminal:
if ! [ -f /usr/bin/asciiquarium ]; then
	echo Asciiquarium is not installed, starting install...
	sudo pacman -S --needed asciiquarium
	clear
fi

# Auto install N Snake when starts terminal:
if ! [ -f /usr/bin/nsnake ]; then
	echo N Snake is not installed, starting install...
	yay -S --needed nsnake
	clear
fi

# Auto install Vi Tetris when starts terminal:
if ! [ -f /usr/bin/vitetris ]; then
	echo Vi Tetris is not installed, starting install...
	yay -S --needed vitetris
	clear
fi

# Auto install Bastet when starts terminal:
if ! [ -f /usr/bin/bastet ]; then
	echo Bastet is not installed, starting install...
	yay -S --needed bastet
	clear
fi

# Auto install GNU Chess when starts terminal:
if ! [ -f /usr/bin/gnuchess ]; then
	echo GNU Chess is not installed, starting install...
	sudo pacman -S --needed gnuchess
	clear
fi

# Auto install Git when starts terminal:
if ! [ -f /usr/bin/git ]; then
	echo Git is not installed, starting install...
	sudo pacman -S --needed git
	clear
fi

# Auto install Github CLI when starts terminal:
if ! [ -f /usr/bin/gh ]; then
	echo Github CLI is not installed, starting install...
	sudo pacman -S --needed github-cli
	clear
fi

# Auto install Flatpak when starts terminal:
if ! [ -f /usr/bin/flatpak ]; then
	echo Flatpak is not installed, starting install...
	sudo pacman -S --needed flatpak
	clear
fi

# Auto install Top when starts terminal:
if ! [ -f /usr/bin/top ]; then
	echo Top is not installed, starting install...
	sudo pacman -S --needed top
	clear
fi

# Auto install H Top when starts terminal:
if ! [ -f /usr/bin/htop ]; then
	echo H Top is not installed, starting install...
	sudo pacman -S --needed htop
	clear
fi

# Auto install B Top when starts terminal:
if ! [ -f /usr/bin/btop ]; then
	echo B Top is not installed, starting install...
	sudo pacman -S --needed btop
	clear
fi

# Auto install VIM when starts terminal:
if ! [ -f /usr/bin/vim ]; then
	echo VIM is not installed, starting install...
	sudo pacman -S --needed vim
	clear
fi

# Auto install Yazi when starts terminal:
if ! [ -f /usr/bin/yazi ]; then
	echo Yazi is not installed, starting install...
	sudo pacman -S --needed yazi
	clear
fi

# Auto install Ventoy when starts terminal:
if ! [ -f /usr/bin/ventoy ]; then
	echo Ventoy is not installed, starting install...
	yay -S --needed ventoy-bin
	clear
fi

# Auto install W Get when starts terminal:
if ! [ -f /usr/bin/wget ]; then
	echo W Get is not installed, starting install...
	sudo pacman -S --needed wget
	clear
fi

# Auto install Lua when starts terminal:
if ! [ -f /usr/bin/lua ]; then
	echo Lua is not installed, starting install...
	sudo pacman -S --needed lua
	clear
fi

# Auto install Luau when starts terminal:
if ! [ -f /usr/bin/luau ]; then
	echo Luau is not installed, starting install...
	sudo pacman -S --needed luau
	clear
fi

# Auto install Zip when starts terminal:
if ! [ -f /usr/bin/zip ]; then
	echo Zip is not installed, starting install...
	sudo pacman -S --needed zip
	clear
fi

# Auto install UnZip when starts terminal:
if ! [ -f /usr/bin/unzip ]; then
	echo UnZip is not installed, starting install...
	sudo pacman -S --needed unzip
	clear
fi

# Clear terminal after verifications set up bash completions and fast fetch:
if [ -r /usr/share/bash-completion/bash_completion ]; then
	. /usr/share/bash-completion/bash_completion
fi

cd ~
clear
fastfetch
