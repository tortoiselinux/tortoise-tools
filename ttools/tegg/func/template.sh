TEMPLATE(){

    printf '%s\n' "gerando diretório principal do programa"

    mkdir "$src_dir/$programa"

    printf '%s\n' "criando modelo..."

    mkfile -s "$diretorio_destino/$programa.sh"

    givePerms "$diretorio_destino/$programa.sh"

    printf '%s\n' "gerando changelogs..."

    mkfile -e "$diretorio_destino/CHANGELOG.txt"

    printf '%s\n' "gerando symlinks para o script..."

    ln -s "$diretorio_destino/$programa.sh" "$links_dir/$programa"
}