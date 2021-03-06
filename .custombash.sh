#! /bin/bash

# 自定义的快捷别名
alias cls='clear'
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

alias op="xdg-open"			
alias lstrash='trash-list'        # 列出回收站中的文件
alias toggleamixer='amixer sset Master toggle'
alias reis="cd /home/wangminli/reis/root"
alias js="cd /home/wangminli/reis/root/js/reis"
alias db="cd /home/wangminli/reis/db"
alias q="exit"
alias ge="cd /home/wangminli/reis/root/general/"
alias get="sh ~/get.sh"
alias lock="xtrlock"
alias memo="cd /home/wangminli/Documents/memo"
alias doc="cd /home/wangminli/文档/"
alias dow="cd /home/wangminli/Downloads/"
alias tree="tree | less"
alias todo="vim ~/Documents/memo/todo.md"
alias finish="sudo kill -9"
alias install="sudo apt-get install "


export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

##################################################################################3
## 一些网上摘抄的快捷操作
# http://bluereader.org/article/14494368
#Productivity
alias ls="ls --color=auto"
alias ll="ls --color -al"
alias grep='grep --color=auto'
mcd() { mkdir -p "$1"; cd "$1";}
cls() { cd "$1"; ls;}
backup() { cp "$1"{,.bak};}
md5check() { md5sum "$1" | grep "$2";}
alias makescript="fc -rnl | head -1 >"
alias genpasswd="strings /dev/urandom | grep -o '[[:alnum:]]' | head -n 30 | tr -d '\n'; echo"
alias c="clear"
alias hgrep="history | grep"
alias ..='cd ..'
alias ...='cd ../..'
extract() {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}
#System info
alias cmount="mount | column -t"
#alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
sbs(){ du -b --max-depth 1 | sort -nr | perl -pe 's{([0-9]+)}{sprintf "%.1f%s", $1>=2**30? ($1/2**30, "G"): $1>=2**20? ($1/2**20, "M"): $1>=2**10? ($1/2**10, "K"): ($1, "")}e';}
alias intercept="sudo strace -ff -e trace=write -e write=1,2 -p"
alias meminfo='free -m -l -t'
alias ps?="ps aux | grep"
alias volume="amixer get Master | sed '1,4 d' | cut -d [ -f 2 | cut -d ] -f 1"
#Network
alias websiteget="wget --random-wait -r -p -e robots=off -U mozilla"
alias listen="lsof -P -i -n"
alias port='netstat -tulanp'
#gmail() { curl -u "$1" --silent "https://mail.google.com/mail/feed/atom" | sed -e 's/<\/fullcount.*/\n/' | sed -e 's/.*fullcount>//'}
alias ipinfo="curl ifconfig.me && curl ifconfig.me/host"
getlocation() { lynx -dump http://www.ip-adress.com/ip_tracer/?QRY=$1|grep address|egrep 'city|state|country'|awk '{print $3,$4,$5,$6,$7,$8}'|sed 's\ip address flag \\'|sed 's\My\\';}
#Funny
kernelgraph() { lsmod | perl -e 'print "digraph \"lsmod\" {";<>;while(<>){@_=split/\s+/; print "\"$_[0]\" -> \"$_\"\n" for split/,/,$_[3]}print "}"' | dot -Tpng | display -;}
alias busy="cat /dev/urandom | hexdump -C | grep \"ca fe\""
##################################################################################3
## git
alias gad="git add"
alias gcm="git commit"
alias gam="git commit -am"
alias gco="git checkout"
alias gpull="git pull"
alias gpush="git push"
alias gst="git status"
alias glog="git log"

## 连接远程主机
alias rdesktop="sh ~/remotehost.sh"   

# 快速写入别名并生效
alias vibash="vim + ~/.bashrc"
alias takeeffect="source ~/.bashrc"

alias phdev="bash ~/phdev.sh"

# 全局替换，$1：oldstring ,$2: newstring
function tihuan {
    find . -type f -exec sed -i s/$1/$2/g {} \; 
}

# 快速切换目录  https://github.com/huyng/bashmarks
source ~/.local/bin/bashmarks.sh


# 创建文件的同时给文件赋上权限
function vimm(){
vim $2;
chmod $1 $2
}

# r
alias r="ranger"

# 录制终端会话:record time.log output.session，名字定义无所谓
alias record="script -t 2>"  # record tech.log tech.session
alias recordplay="scriptreplay "
alias todo="echo '-$!' >> ~/gtd.md"
alias gtd="cat ~/gtd.md"

# history格式
HISTTIMEFORMAT="%d/%m/%y %T "

function kelu(){
	# dd if=debian-jessie-DI-b2-i386-CD-1.iso of=/dev/sdb bs=1M
	sudo dd if=$1 of=/dev/sdb bs=1M
}

