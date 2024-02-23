#!/usr/bin/env bash
#========================{CABEÇALHO}=======================|
#
#AUTOR:
#       wellyton 'welly' <welly.tohn@gmail.com>
#
#NOME: givePerms
#
#DESCRIÇÃO:
#       esse programa permite conceder permissão de execução para vários arquivos.
#
#LICENÇA:
# MIT
#
#MODO DE USO:
#   givePerms <programa1, programa2...>
#
#
#CHANGELOG:
#   VERSÃO 0.0.1 - beta
#
#   Descrição:
#   Versão inicial do programa.
#
#	alterações:
#   - conceder permissão para multiplos arquivos adicionada

# INÍCIO DO PROGRAMA
chmod +x "$@"
