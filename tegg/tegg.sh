#!/usr/bin/env bash
#========================{CABEÇALHO}=======================|
#
#AUTOR:
#   wellyton 'welly' <welly.tohn@gmail.com>
#
#NOME: tegg
#
#VERSÃO: v0.0.6
#
#
#DESCRIÇÃO:
#   esse é o gerenciador e instalador de programas e scripts
#   tegg! O dever desse programa é baixar e atualizar cada um
#   dos scripts necessários e suas dependências.
#   Além disso, ele dá suporte aos desenvolvedores, gerando
#   templates para que crie os seus próprios no padrão do projeto
#   tortoise!
#
#LICENÇA:
#   MIT
#
#CHANGELOG:
#   VERSÃO 0.0.6 - BETA
#
#   Descrição:
#   - correção na função de configuração do tegg
#
#   Alterações:
#       - bug da função de configuração corrigido.
#   detalhes:
#       - a função de configuração tinha um erro no recebimento 
#       do argumento o que fazia que obtivesse sempre um argumento
#       vazio.

# VARIAVEIS GLOBAIS

uso="
$(basename $0) {OPTION}
comandos:
   $(basename $0) -{command}
    h | help
    i | install
    r | remove
    up | update
    c | config
    t | template

    OBS: (-) ou (--) antes dos comandos é opcional
"

script_dir="$HOME/scripts"
src_dir="$HOME/scripts/src"
links_dir="$HOME/scripts/symlinks"
programa="$2"
diretorio_destino="$HOME/scripts/src/$programa"
url="https://raw.githubusercontent.com/tortoiselinux/scripts/main/src/$programa/$programa.sh"

# importando tudo

source "./imports.sh"

# INICIO

case "$1" in

    "" | h |-h | help | --help)

      printf '%s\n' "$uso"

    ;;

    i | -i | install | --install)

	    INSTALL

    ;;

    r | -r | remove | --remove)

	    REMOVE

    ;;

    up | -up | update | --update)

	    UPDATE

    ;;

    c | -c | config | --config)

	    CONFIG "$2"

    ;;

    t | -t | template | --template)

	    TEMPLATE

    ;;

    test)
        TEST "$2"
    ;;

    *)
      printf "opção inválida digite (-h) para mais informações"

      exit 1
    ;;

esac
