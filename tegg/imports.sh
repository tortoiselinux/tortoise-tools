# IMPORTAÇÃO DAS FUNÇÕES

verifica_dir="./func/verifica_dir.sh"
verifica_path="./func/verifica_path.sh"
verifica_destino="./func/verifica_destino.sh"
install="./func/install.sh"
remove="./func/remove.sh"
update="./func/update.sh"
config="./func/config.sh"
template="./func/template.sh"
test="./func/test.sh"

# CARREGAMENTO DAS FUNÇÕES FUNÇÕES

source "$verifica_dir"
source "$verifica_path"
source "$verifica_destino"
source "$install"
source "$remove"
source "$update"
source "$config"
source "$template"
source "$test"