# My RC

My personal linux-related settings

# Content

##Disclaimer (All done on RHEL8 AWS box, also tested vim on ubuntu)

.vimrc (vim) and nvim files included in files above
    
    .vimrc goes in ~
    nvim files go in ~/.config/nvim
    
    If .vimrc doesn't auto-install plugins when opened in vim you might need to install curl

Possible alias' for .bash_profile or .profile:
    
    alias vi="vim"
    alias nvim="sudo /usr/local/bin/nvim"
    alias ls="ls -altr --color-auto"

Install FZF (need to do for each user):
    
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
	Yes to all options

Install vim-enhanced:
    
    yum install vim

    If you don't want node modules, etc. to show up in in fzf:
	    yum install the_silver_searcher
	
	    Add to .bashrc:
		    if type ag &> /dev/null; then
				    export FZF_DEFAULT_COMMAND='ag -p ~/.gitignore -g ""'
		    fi

If using neo-vim instead...
    
    // yum install curl
    // yum install fuse-libs
    curl -o /usr/local/bin/nvim -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
    chmod u+x /usr/local/bin/nvim

    Get nvim to be usable by users other than root:
        echo 'alias nvim="sudo /usr/local/bin/nvim"' >> ~/.bash_profile && . ~/.bash_profile && reset

    Install vim-plug:
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
          https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    Might need to move 'plug.vim' into '.config/nvim/autoload' manually

    If want syntax highlighting with tree-sitter
        yum groupinstall "Development Tools"
        in vim: :TSInstall language     :TSInstallInfo to get list of languages

    In vim: :PlugInstall

mobaXterm Settings:
    
    session settings -> Terminal Settings -> Terminal Type = 'xterm-256color'
	session-settings -> terminal settings -> Customize Terminal Colors Scheme (loading symbol on screen):
		Background: 40, 40, 40
		Foreground: 213, 196, 161
	Basic SSH settings -> specify username (ec2-user or whatever)
	Top Bar settings -> Display -> Skin selection: windows dark theme
	Top Bar Settings => SSH -> SSH keepalive ON

Putty Settings:
    
    In putty, make sure Connection -> Data -> Terminal-type string = 'xterm-256color'
	window -> colours:
		Default Foreground: 213,196,161
		Default Bold Foreground: 189,174,147
		Default Background: 40,40,40
		Default Bold Background: 60,56,54
    connection -> seconds between keepalives = 1
