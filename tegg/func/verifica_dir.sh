VERIFICA_DIR(){

	printf '%s\n' "verificando estruturas de pastas...."

	printf '%s\n' "verificando se o diretório scripts existe..."

    if [ ! -d "$script_dir"  ]; then

        printf '%s\n' "diretório não existente"

        printf '%s\n' "criando diretorio."

        mkdir -p "$script_dir"

    else

        printf '%s\n' "diretório $script_dir existente."

    fi

    printf '%s\n' "verificando se o diretório scripts existe."

    if [ ! -d "$src_dir"  ]; then

        printf '%s\n' "diretorio não existe"

        printf '%s\n' "criando diretorio $src_dir"

        mkdir -p "$src_dir"

    else

        printf '%s\n' "diretorio $src_dir existe"

    fi

    printf '%s\n' "verificando se o diretório symlinks existe"

    if [ ! -d "$links_dir"  ]; then

        printf '%s\n' "gerando diretorio $links_dir"

        mkdir -p "$links_dir"

     else

        printf '%s\n' "$links_dir existe."

     fi
}