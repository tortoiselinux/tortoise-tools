CONFIG(){
	case "$1" in
	    "")

		  VERIFICA_DIR

		  VERIFICA_PATH
	    ;;

	    d | -d | dir | --dir)

		  VERIFICA_DIR
	    ;;

	    p | -p | path | --path)

		  VERIFICA_PATH
	    ;;

	    f | -f | font | --font)

		  nano -m -l "$links_dir/tegg"
	    ;;

        *)
            printf '%s\n' "não foi possível identificar o argumento."
        ;;
	esac
}