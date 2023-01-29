#!/bin/bash

echo "A executar os testes ..."
echo

output=$(./a.out)

if [ $? -eq 0 ] ; then
  echo "Aprovado: o programa terminou com retorno zero"
else
  echo "Falha: o programa não retornou zero"
  exit 1
fi

# Verifica se "Nome : Carlos Fonseca" está em uma linha
if echo "$output" | grep -q "Nome : Carlos Fonseca" ; then
  echo "Aprovado: O nome está presente na saída"
else
  echo "Falha: O nome não está presente na saída"
  exit 1
fi

# Verifica se "Data : 14 de Setembro de 2007" está em uma linha diferente
if echo "$output" | grep -q "Data : 14 de Setembro de 2007" ; then
  echo "Aprovado: A data está presente na saída"
else
  echo "Falha: A data não está presente na saída"
  exit 1
fi

# Verifica se "Morada : Santo Tirso" está em uma linha diferente
if echo "$output" | grep -q "Morada : Santo Tirso" ; then
  echo "Aprovado: A morada está presente na saída"
else
  echo "Falha: A morada não está presente na saída"
  exit 1
fi

echo
echo "Todos os testes terminados com sucesso."

exit 0
