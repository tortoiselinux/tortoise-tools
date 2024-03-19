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
templates="$HOME/.config/tortoise/template/"

if [ -d "$HOME/.config/tortoise/template/" ];
then
	template="$HOME/.config/tortoise/template/tortoise-standard-shell-template.txt"
fi
help="
$(basename $0) {OPÇÃO}
comandos:
   $(basename $0) -{comando}
    h | help
    c | create
    l | list

    OBS: (-) ou (--) antes dos comandos é opcional
"

# FUNÇÕES

HELP(){
 echo "$help"
}

CREATE(){
  if [ -z "$2"  ]; then
    printf '%s\n' "está faltando argumento."
	exit 1
  fi
  
  cat "$1" > "$2"
}

CREATE_EMPITY(){
   if [ -z "$2"  ]; then
     printf '%s\n' "está faltando argumento."
	 exit 1
   fi

   echo "$1" > "$2"
}

LIST(){
	ls "$templates" > /tmp/list.txt
	cat -n /tmp/list.txt
	rm /tmp/list.txt
}

ADD(){
	printf '%s\n' "$1" > "$templates"
}

# INICIO DO PROGRAMA
case "$1" in
  "" | h | -h | help | --help)
    HELP 
  ;;

  c | -c | create | --create)
    if [ -z "$template" ]; then
      printf '%s\n' "não foi passado um template para a criação, use a opção list para ver quais templates você tem."
	fi
	
    CREATE "$template" "$2" 
  ;;

  l | -l | list | --list)   
	LIST
  ;;

  a | -a | add | --add)
	ADD "$2"
  ;; 
  
  *)
    CREATE_EMPITY "" "$1"
  ;;
esac

# TODO: criar função de input e output

