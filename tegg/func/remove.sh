REMOVE(){

	printf '%s\n' "removendo programas"

	rm -vrf "$diretorio_destino"

    printf '%s\n' "removendo links simbólicos"

    rm -v "$links_dir/$programa"

}