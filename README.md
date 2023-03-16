# ProblemaA

Números de Motzkin

  Este ano é ano da sequência de inteiros Mn dita de Motzkin. Diz o Wikipedia que
Em matemática, um número de Motzkin para um dado número n é o número de diferentes maneiras de desenhar cordas não intersectantes entre n pontos sobre uma circunferência. Os números de Motzkin são denominados em memória de Theodore Motzkin, tendo diversas aplicações em geometria, combinatória e teoria dos números.
  Os números de Motzkin Mn para n = 0, 1, . . . formam a sequência: 1, 1, 2, 4, 9, 21, 51, 127, 323, 835, 2188, 5798, 15511, 41835, 113634, 310572, 853467, 2356779, 6536382, 18199284, 50852019, 142547559, 400763223, 1129760415, 3192727797, 9043402501, 25669818476, 73007772802, 208023278209, 593742784829

Aviso: É esperado uma solução recursiva.

  A resolução deste exercício precisa de uma implementação da sequência muito cuidada.
  Primeiro, é necessário uma implementação claramente eficiente: sem cuidado particular, a execução é rapidamente incomportável.
  Segundo, por esta considerar valores de entrada relativamente grandes, a sequência vai muito rapidamente devolver valores que ultrapassam em tamanho a capacidade dos   inteiros primitivos (int). Para isso, aconselha-se o uso da aritmética de precisão arbitrária. Tal funcionalidade pode ser encontrada na biblioteca zarith.

Entrada:

  Uma linha com um inteiro n.
  
Saída:
  
  Uma primeira linha com o valor Mn
  
Limites:
  
  0 ≤ n ≤ 10000

Exemplo de Entrada:

  6
  
Exemplo de Saída:

  51
