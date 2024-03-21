VERIFICA_PATH(){

	printf '%s\n' "verificando se os programas estão carregados no path..."

	if grep -Fxq 'export "PATH=\$PATH:$HOME/scripts/symlinks"' "$HOME/.bashrc"; then

		printf '%s\n' "Programas já carregados no path."

	else

		echo 'export "PATH=\$PATH:$HOME/scripts/symlinks"' >> "$HOME/.bashrc"

		printf '%s\n' "Linha adicionada ao .bashrc"

	fi
}