UPDATE(){
	url="https://raw.githubusercontent.com/tortoiselinux/tegg/main/tegg.sh"
	diretorio_destino="$HOME/scripts/src/tegg"
	programa="tegg"

	VERIFICA_DESTINO

	printf '%s\n' "baixando fonte..."
	wget -N -P "$diretorio_destino" "$url"

	printf '%s\n' "concedendo permissão de execução"
    chmod +x "$diretorio_destino/$programa.sh"

    printf '%s\n' "criando link simbólico"
	ln -s "$diretorio_destino/$programa.sh" "$links_dir/$programa"
}