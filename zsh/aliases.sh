# aliases and functions
echo "
# >>> aliases >>>
alias copypath='pwd | clip.exe'
alias distro='cat /etc/*-release'
alias myip='curl http://ipecho.net/plain; echo'
alias reload='source ~/.zshrc; clear'
alias zsconfig='code ~/.zshrc'
# <<< aliases <<<

# >>> functions >>>
function copyfile() {
    if [ -z "$1" ]; then
        echo "No file specified"
    else
        if [ -f "$1" ]; then
            cat "$1" | clip.exe
        else
            echo "File not found"
        fi
    fi
}
# <<< functions <<<" >> ~/.zshrc