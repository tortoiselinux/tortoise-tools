# mkfile

    ::::    ::::  :::    ::: :::::::::: ::::::::::: :::        :::::::::: 
    +:+:+: :+:+:+ :+:   :+:  :+:            :+:     :+:        :+:        
    +:+ +:+:+ +:+ +:+  +:+   +:+            +:+     +:+        +:+        
    +#+  +:+  +#+ +#++:++    :#::+::#       +#+     +#+        +#++:++#   
    +#+       +#+ +#+  +#+   +#+            +#+     +#+        +#+        
    #+#       #+# #+#   #+#  #+#            #+#     #+#        #+#        
    ###       ### ###    ### ###        ########### ########## ########## 

mkfile é um script que cria arquivos vazios, no entanto também pode auxiliar 
na criação de scripts desde que seja passado um template para o mesmo.

# como utilizar o mkfile:

arquivos vazios
    mkfile -e <nome_do_arquivo + extensão (opcional)>

scripts
    mkfile -s <nome_do_script + extensão (opcional)>

exemplo
    mkfile -e I_love_turtles

    mkfile -s save_the_turtles

você também pode criar o seu próprio template de script, mas caso deseje
criar programas para submeter ao repositório tortoise tente não fugir dos
padrões.
