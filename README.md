# python-robot-framework
Framework de automação de testes utilizando Robot

Para executar os testes utilizar:

robot <nome do arquivo de teste.robot>

para executar apenas um cenario de teste em um arquivo com mais de um teste, executar:

robot -t "<nome do cenario de teste> <nome do arquivo de teste.robot>"

Para executar cenario por meio das tags, deve rodar:

robot -i <nome da tag do cenario>

Para rodar cenarios e excluir algumas tags especificas, executar:

robot -e <nome da tag> <nome do arquivo de teste.robot>

Para armazenar os arquivos de logs em uma pasta especifica, executar o comando:

robot -d <nome da pasta para armazenar os arquivos>

Para adicionar um valor diferente em uma variavel global para execução, basta rodar:

robot -v BROWSER:firefox

nesta execução ele troca o browser default que é o chrome para executar o cenaro no browser firefox