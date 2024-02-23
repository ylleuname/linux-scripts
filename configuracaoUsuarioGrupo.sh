#!/bin/bash

grupo="insira_o_nome_do_grupo"
usuario="insira_o_nome_do_usuario"

sudo groupadd "$grupo"
sudo useradd -m "$usuario" 
sudo chsh -s /bin/bash "$usuario"
sudo usermod -G "$grupo" "$usuario"

#Para configurar a permissao considere que 4 eh leitura, 2 eh gravacao, 1 execucao e 0 sem permissao
#insira o somatorio das permissoes no primeiro slot para permissoes do adm
#segundo slot eh para permissoes do grupo e terceiro slot permissoes para demais usuarios

chmod 740 /home/"$usuario"

echo "O grupo foi criado e o usuário criado foi inserido no grupo com sucesso"
