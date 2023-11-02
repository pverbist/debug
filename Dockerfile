FROM alpine:edge

RUN echo 'https://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories

RUN apk update && \
    apk add --no-cache \
    # build/code
    build-base git bash bash-completion ncurses vim tmux jq \
    # network
    bind-tools inetutils-telnet iputils tcpdump curl nmap tcpflow iftop net-tools mtr netcat-openbsd bridge-utils iperf ngrep elinks iproute2 \
    # certificates
    ca-certificates openssl \
    # processes/io
    htop atop strace iotop sysstat ltrace ncdu logrotate hdparm pciutils psmisc tree pv \
    # kubernetes
    kubectl

USER 1001
