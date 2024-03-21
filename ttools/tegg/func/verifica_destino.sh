VERIFICA_DESTINO(){

	 if [ ! -d "$diretorio_destino"  ]; then
	    printf '%s\n' "gerando diretorio de destino"

	    mkdir -p "$diretorio_destino"

	 else

	    printf '%s\n' "$diretorio_destino existe."

	 fi
}