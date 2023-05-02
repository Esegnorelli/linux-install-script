# Script de Instalação de Programas para Linux

Este é um script em bash que automatiza a instalação de vários programas úteis para um sistema Linux. 

## Variáveis

- `PPA_LIBRATBAG` - Repositório PPA do Libratbag.
- `PPA_LUTRIS` - Repositório PPA do Lutris.
- `URL_WINE_KEY` - URL da chave de autenticação do Wine.
- `URL_PPA_WINE` - URL do repositório do Wine.
- `DIRETORIO_DOWNLOADS` - Diretório de download dos programas.

## Funções

- `remove_locks()` - Remove os arquivos de trava do APT.
- `add_repositories()` - Adiciona os repositórios necessários para instalar os programas.
- `install_programs()` - Instala os programas listados no array `PROGRAMAS_PARA_INSTALAR`.
- `install_flatpak_snap()` - Instala o Flatpak e o Snap, e alguns programas por meio desses sistemas.
- `update_and_cleanup()` - Atualiza o sistema e remove pacotes desnecessários.

## Execução

Para executar o script, basta rodar o seguinte comando:

```
$ sudo bash install_programs.sh
```

**Observação:** é importante que o usuário tenha permissões administrativas para executar o script.## Como usar

Para usar o script, siga os seguintes passos:

1. Abra o terminal.
2. Baixe o arquivo `install_programs.sh`.
3. Dê permissão de execução ao arquivo:
```
$ chmod +x install_programs.sh
```
4. Execute o script como administrador:
```
$ sudo ./install_programs.sh
```

**Observação:** é importante lembrar que o script foi testado em distribuições baseadas em Ubuntu e pode não funcionar em outras distribuições sem ajustes. Além disso, o script pode instalar pacotes adicionais além dos que foram listados. É recomendado que você revise o script e ajuste-o de acordo com suas necessidades.

## Programas Instalados

O script instala os seguintes programas:

- snapd
- mint-meta-codecs
- winff
- guvcview
- virtualbox
- flameshot
- nemo-dropbox
- steam-installer
- steam-devices
- steam:i386
- ratbagd
- piper
- lutris
- libvulkan1
- libvulkan1:i386
- libgnutls30:i386
- libldap-2.4-2:i386
- libgpg-error0:i386
- libxml2:i386
- libasound2-plugins:i386
- libsdl2-2.0-0:i386
- libfreetype6:i386
- libdbus-1-3:i386
- libsqlite3-0:i386
- Wine (stable)

O script também instala o Flatpak e o Snap e os seguintes programas por meio desses sistemas:

- OBS Studio
- Spotify
- Slack
- Skype
- Photogimp (versão otimizada do GIMP)

## Considerações Finais

Este script é uma maneira rápida e fácil de instalar vários programas em um sistema Linux. No entanto, é importante lembrar que o script pode instalar pacotes adicionais além dos que foram listados e é recomendado que você revise o script e ajuste-o de acordo com suas necessidades. Além disso, o script foi testado em distribuições baseadas em Ubuntu e pode não funcionar em outras distribuições sem ajustes.
