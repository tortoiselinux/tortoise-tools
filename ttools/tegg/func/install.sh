INSTALL(){

    printf '%s\n' "iniciando instalação do programa..."

    VERIFICA_DIR

    VERIFICA_DESTINO

    printf '%s\n' "baixando código fonte..."

    wget -N -P "$diretorio_destino" "$url"

    printf '%s\n' "concedendo permissão de execução ao programa"

    chmod +x "$diretorio_destino/$programa.sh"

    printf '%s\n' "gerando link simbólico"

    ln -s "$diretorio_destino/$programa.sh" "$links_dir/$programa"
}
