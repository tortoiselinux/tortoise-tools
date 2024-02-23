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
#   criada a versão inicial do programa, com o primeiro modelo de script
#
#   alterações:
#   - modelo de script 1.1
#

# VARIÁVEIS
conteudo="
#!/usr/bin/env bash
#========================{CABEÇALHO}=======================|
#
#AUTOR:
#   john doe 'john_doe' <john.doe@gmail.com>
#
#NOME:
#
#
#DESCRIÇÃO:
#   esse programa faz...
#
#LICENÇA:
#   LPMNO
#
#   AVISO! - essa licença não cobre a posse de tartarugas.
#
#CHANGELOG:
#   VERSÃO 0.0.1 - beta
#
#   Descrição:
#
#   alterações:
#
"
# INICIO DO PROGRAMA
echo "$conteudo"> "$1" #nome do script
