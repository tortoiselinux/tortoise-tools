#!/usr/bin/env bash

#========================{CABEÇALHO}=======================|
#
#AUTOR:
#   wellyton 'welly' <welly.tohn@gmail.com>
#
#NOME: template
#
#DESCRIÇÃO:
#   programa que gera um template para criação de scripts
#
#LICENÇA:
# MIT
#
#CHANGELOG:
#   VERSÃO 0.0.1 - beta
#
#   Descrição:
#     criada a versão inicial do programa, com o primeiro modelo de script
#
#   alterações:
#     - modelo de script 1.1
#
#   VERSÃO 0.0.2 - beta
#     
#   Descrição:
#     código melhorado e diretório padrão dos templates adicionados.
#
#   Alterações:
#     - código refatorado.

# VARIÁVEIS
template="$HOME/.config/tortoise/template/tortoise-standard-shell-template.txt"

help="
$(basename $0) {OPÇÃO}
comandos:
   $(basename $0) -{comando}
    h | help
    c | create

    OBS: (-) ou (--) antes dos comandos é opcional
"

# FUNÇÕES

HELP(){
 echo "$help"
}

CREATE(){
  echo "$1" > "$2"
}

# INICIO DO PROGRAMA
case "$1" in
  "" | h | -h | help | --help)
    HELP 
  ;;

  c | -c | create | --create)
    CREATE "$template" "$2" 
  ;;

  *)
    CREATE "$template" "$1"
  ;;
esac

# TODO: criar função de input e output

