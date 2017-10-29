# Easier navigation: .., ..., ...., .....
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"

# View HTTP traffic
alias sniff="sudo ngrep -d 'eth0' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i eth0 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
    alias "$method"="lwp-request -m '$method'"
done

# Find non-ASCII characters
alias find-non-ascii="grep --color='auto' -P -n '[\x80-\xFF]' -r --exclude-dir='.git' ."

alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'
