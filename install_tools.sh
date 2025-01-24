#!/bin/bash

# Atualizar o sistema e instalar dependências básicas
echo "Atualizando o sistema e instalando dependências..."
sudo apt update && sudo apt upgrade -y
sudo apt install -y unzip make python3 python3-pip git curl wget
sudo apt-get remove --purge golang-go golang-*

GO_VERSION="1.20.3"  # Substitua pela versão desejada
echo "Baixando o Go versão $GO_VERSION..."
wget https://golang.org/dl/go$GO_VERSION.linux-amd64.tar.gz

sudo tar -C /usr/local -xvzf go$GO_VERSION.linux-amd64.tar.gz

rm go$GO_VERSION.linux-amd64.tar.gz

# Configurar as variáveis de ambiente
echo "Configurando as variáveis de ambiente..."
echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.bashrc
echo "export GOPATH=\$HOME/go" >> ~/.bashrc
echo "export GOROOT=/usr/local/go" >> ~/.bashrc
source ~/.bashrc

# Configurar variáveis para diretórios
GO_BIN="$HOME/go/bin"
BIN_DIR="/usr/bin"

# Função para instalar ferramentas Go
install_go_tool() {
    TOOL=$1
    echo "Instalando $TOOL..."
    go install "$TOOL"
    TOOL_NAME=$(basename "$TOOL" | cut -d '@' -f 1)
    mv "$GO_BIN/$TOOL_NAME" "$BIN_DIR/"
}

# Ferramentas Go
install_go_tool "github.com/owasp-amass/amass/v4/...@master"
install_go_tool "github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest"
install_go_tool "github.com/projectdiscovery/httpx/cmd/httpx@latest"
install_go_tool "github.com/projectdiscovery/cvemap/cmd/cvemap@latest"
install_go_tool "github.com/projectdiscovery/katana/cmd/katana@latest"
install_go_toll "github.com/projectdiscovery/naabu/v2/cmd/naabu@latest"
install_go_tool "github.com/tomnomnom/assetfinder@latest"
install_go_tool "github.com/tomnomnom/anew@latest"
install_go_tool "github.com/bp0lr/gauplus@latest"
install_go_tool "github.com/deletescape/goop@latest"
install_go_tool "github.com/projectdiscovery/dnsx/cmd/dnsx@latest"
install_go_tool "github.com/hakluke/hakcheckurl@latest"
install_go_tool "github.com/tomnomnom/meg@latest"
install_go_tool "github.com/tomnomnom/waybackurls@latest"
install_go_tool "github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest"
install_go_tool "github.com/takshal/freq@latest"
install_go_tool "github.com/j3ssie/sdlookup@latest"
install_go_tool "github.com/d3mondev/puredns/v2@latest"
install_go_tool "github.com/hueristiq/xurlfind3r/cmd/xurlfind3r@latest"
install_go_tool "github.com/ferreiraklet/airixss@latest"
install_go_tool "github.com/ferreiraklet/nilo@latest"
install_go_tool "github.com/hakluke/hakrawler@latest"
install_go_tool "github.com/tomnomnom/qsreplace@latest"

# Ferramentas com instalação específica
echo "Instalando Findomain..."
curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux.zip
unzip findomain-linux.zip
chmod +x findomain
sudo mv findomain "$BIN_DIR/findomain"
rm findomain-linux.zip

echo "Instalando Knock..."
pip install git+https://github.com/guelfoweb/knock.git

echo "Clonando e configurando Photon..."
git clone https://github.com/s0md3v/Photon.git
cd Photon || exit
pip3 install -r requirements.txt --break-system-packages
cd ..

echo "Clonando e configurando Sudomy..."
git clone --recursive https://github.com/screetsec/Sudomy.git
cd Sudomy || exit
python3 -m pip install -r requirements.txt
cd ..

echo "Instalando URO..."
pip3 install uro

echo "Clonando e configurando DNSValidator..."
git clone https://github.com/vortexau/dnsvalidator.git
cd dnsvalidator || exit
python3 setup.py install
cd ..

echo "Clonando e configurando MassDNS..."
git clone https://github.com/blechschmidt/massdns.git
cd massdns || exit
make
sudo make install
cd ..

echo "Instalação concluída! Happy Hunt :D"
