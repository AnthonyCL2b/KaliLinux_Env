FROM kalilinux/kali-rolling

WORKDIR /workspace
COPY wordlist.zip /usr/share/wordlist.zip
RUN apt update
RUN apt install -y zip git curl zsh python3.10 emacs openvpn
RUN apt install -y apache2 nmap sqlitebrowser gobuster
RUN apt install -y hashcat john medusa

RUN rm -rf /usr/share/wordlists
RUN unzip /usr/share/wordlist.zip -d /usr/share/
RUN rm /usr/share/wordlist.zip

RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"