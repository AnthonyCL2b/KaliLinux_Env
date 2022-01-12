FROM kalilinux/kali-rolling

WORKDIR /workspace
COPY wordlists /usr/share/wordlists
RUN apt update
RUN apt install -y git curl zsh python3.10 emacs openvpn
RUN apt install -y apache2 wordlists nmap sqlitebrowser gobuster
RUN apt install -y hashcat john medusa
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"