#!/usr/bin/env bash
#========================{CABEÇALHO}=======================|
#
#AUTOR:
#   wellyton 'welly' <wellyton.offcer@gmail.com>
#
#NOME:
#
#
#DESCRIÇÃO:
#   O objetivo desse programa é automatizar processos de configuração repetitivos.
#
#LICENÇA:
#   LPMNO
#
#   AVISO! - essa licença não cobre a posse de tartarugas.
#
#CHANGELOG:
#   VERSÃO 0.0.1 - alfa
#
#   Descrição:
#     versão inicial experimental do sysconf.

bem_vindo="
bem vindo ao sysconf!

comandos:
  
  add
  config
  edit
  remove 
"

dir="$HOME/.config/tortoise/sysconf/"

HELLO(){
  printf '%s\n' "$bem_vindo"
}

# TODO: criar uma função que carregue os arquivos de configuração do usuário nos locais corretos e da maneira correta.
#LOAD_CONFIGS(){
#  
#}

ADD(){
  printf '%s\n' "" > "$dir/$1"
}

EDIT(){
  "$EDITOR" "$dir/$1"
}

REMOVE(){
  rm "$dir/$1"
}

# TODO: criar uma função que verifica se o diretório de configuração existe, se não, o cria.
#VERIFY(){
#
#}

case "$1" in 
  "") 
    LOAD_CONFIGS
  ;;

  help)
    HELP
  ;;
  add)
    ADD $2
  ;;

  edit)
    EDIT $2
  ;;

  remove)
    REMOVE $2
  ;;
esac
