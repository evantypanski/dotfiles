if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_color_user magenta
set fish_color_cwd cyan

function fish_prompt
    printf '%s%s%s:%s%s%s%s%s $ ' (set_color $fish_color_user) $USER (set_color normal) \
        (set_color $fish_color_cwd) (prompt_pwd) \
        (set_color brblue) (fish_git_prompt) (set_color normal)
end

fish_add_path /usr/local/bin
fish_add_path /opt/homebrew/bin
fish_add_path $HOME/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.local/zeek/bin
fish_add_path $HOME/src/spicy/build/bin
fish_add_path $HOME/go/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/src/zls/zig-out/bin
fish_add_path $HOME/src/zls/zig-out/bin

fish_add_path /opt/homebrew/opt/bison/bin
fish_add_path /opt/homebrew/opt/flex/bin
fish_add_path /opt/homebrew/opt/sphinx-doc/bin
fish_add_path /opt/homebrew/opt/llvm/bin

fish_add_path $HOME/.rvm/bin

alias spicy-format="/Users/etyp/src/spicy-format/target/debug/spicy-format"
alias zeek-dev="bash /Users/etyp/src/zeek/build/zeek-path-dev.sh"
alias zeek-storage-dev="bash /Users/etyp/src/zeek-storage/build/zeek-path-dev.sh"
alias spicy-dev="bash /Users/etyp/.local/bin/spicy-dev.sh"
alias spicy-configure="./configure --generator=Ninja --with-flex=\"/opt/homebrew/opt/flex\" --enable-ccache --enable-debug --prefix=/Users/etyp/.local/spicy"
alias zeek-configure="./configure --generator=Ninja --ccache --prefix=/Users/etyp/.local/zeek --build-type=DEBUG"

alias vim=nvim

set EDITOR nvim

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end
