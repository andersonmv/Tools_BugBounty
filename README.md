# Instalação de Ferramentas para Recon

Este script automatiza a instalação de várias ferramentas de recon.

## Pré-requisitos

- Sistema operacional: **Ubuntu** ou qualquer distribuição baseada em **Debian**.
- Acesso de administrador (sudo).
- Conexão com a internet para baixar pacotes e ferramentas.

## Funcionalidades

1. **Atualização do sistema**: Atualiza o sistema e instala pacotes essenciais.
2. **Instalação do Go (Golang)**: Baixa e instala uma versão específica do Go (por padrão, `1.20.3`).
3. **Configuração de variáveis de ambiente**: Configura as variáveis necessárias para o Go e ajusta o PATH do sistema.
4. **Instalação de ferramentas baseadas em Go**: Instala uma série de ferramentas populares de segurança baseadas na linguagem Go, como `Amass`, `Subfinder`, `HTTPX`, entre outras.
5. **Instalação de ferramentas específicas**:
   - **Findomain**: Ferramenta de busca de subdomínios.
   - **Knock**: Ferramenta para reconhecimento passivo de subdomínios.
   - **Photon**: Ferramenta para coletar dados de subdomínios.
   - **Sudomy**: Ferramenta para descoberta de subdomínios.
   - **URO**: Ferramenta de pesquisa de URL.
   - **DNSValidator**: Ferramenta para validação de DNS.
   - **MassDNS**: Ferramenta de resolução massiva de DNS.

## Como usar

### Passo 1: Clone o repositório ou baixe o script

Clone o repositório ou baixe o script diretamente para o seu sistema:

```bash
git clone https://github.com/seu-usuario/seu-repositorio.git
cd seu-repositorio
```

Ou baixe diretamente:

```bash
curl -O https://link-para-o-script
```

### Passo 2: Torne o script executável

Dê permissões de execução para o script:

```bash
chmod +x install_tools.sh
```

### Passo 3: Execute o script

Execute o script para iniciar a instalação das ferramentas:

```bash
./install_tools.sh
```

### Passo 4: Aguarde a conclusão

O script irá automaticamente baixar, instalar e configurar todas as ferramentas mencionadas. Após a conclusão, você verá a mensagem:

```bash
Instalação concluída! Happy Hunt :D
```

## Ferramentas Instaladas

- **Go Tools**:
  - Amass
  - Subfinder
  - HTTPX
  - Cvemap
  - Katana
  - Naabu
  - Assetfinder
  - Anew
  - Gauplus
  - Goop
  - DNSx
  - Hakcheckurl
  - Meg
  - Waybackurls
  - Nuclei
  - Freq
  - Sdlookup
  - Puredns
  - Xurlfind3r
  - Airixss
  - Nilo
  - Hakrawler
  - QSReplace

- **Ferramentas adicionais**:
  - Findomain
  - Knock
  - Photon
  - Sudomy
  - URO
  - DNSValidator
  - MassDNS

## Contribuições

Sinta-se à vontade para contribuir! Se você encontrar algum problema ou quiser adicionar mais ferramentas, abra uma issue ou envie um pull request.

## Licença

Este projeto é licenciado sob a MIT License - veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## Observações

- Certifique-se de que o seu sistema tem recursos suficientes para instalar todas as ferramentas.
- Este script foi desenvolvido para ser executado em ambientes Ubuntu. Para outras distribuições, ajustes podem ser necessários.

Happy Hunty! 🕵️‍♂️