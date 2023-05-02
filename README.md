# BashScript

BashScript é uma linguagem de script utilizada em sistemas operacionais baseados em Unix, como Linux e macOS. É uma das linguagens de script mais populares para automação de tarefas em sistemas Unix.

## Como executar um script Bash

Para executar um script Bash, é necessário criar um arquivo com a extensão `.sh` e adicionar o código do script. Em seguida, o arquivo precisa ser tornar executável com o comando `chmod +x <nome_do_arquivo.sh>`. Finalmente, execute o script usando o comando `./<nome_do_arquivo.sh>`.

## Exemplo de script Bash

```bash
#!/bin/bash

echo "Qual é o seu nome?"
read nome
echo "Olá, $nome!"
```

Este script pede ao usuário que insira seu nome e, em seguida, imprime uma saudação personalizada.

## Variáveis em scripts Bash

As variáveis em BashScript são definidas utilizando a sintaxe `nome_da_variavel=valor`. Por exemplo:

```bash
nome="João"
echo "Olá, $nome!"
```

Este script define uma variável chamada `nome` e, em seguida, imprime uma saudação personalizada utilizando o valor armazenado na variável.

## Condicionais em scripts Bash

As condicionais em BashScript são implementadas utilizando a sintaxe `if`, `else` e `fi`. Por exemplo:

```bash
#!/bin/bash

echo "Qual é a sua idade?"
read idade

if [ $idade -ge 18 ]
then
  echo "Você é maior de idade."
else
  echo "Você é menor de idade."
fi
```

Este script pede ao usuário que insira sua idade e, em seguida, imprime se ele é maior ou menor de idade.

## Loops em scripts Bash

Os loops em BashScript são implementados utilizando a sintaxe `for`, `while` ou `until`. Por exemplo:

```bash
#!/bin/bash

for i in {1..5}
do
  echo "Contando $i"
done
```

Este script utiliza um loop `for` para imprimir a contagem de 1 a 5.

## Conclusão

O BashScript é uma linguagem poderosa e flexível para a automação de tarefas em sistemas Unix. Compreender as noções básicas de como criar e executar scripts Bash, definir variáveis, criar condicionais e loops são fundamentais para começar a utilizar essa ferramenta.
