============================================================================================================
                                     LAPI DOpaCA LAMBA - The Processor
============================================================================================================

Este documento visa especificar como utilizar o simulador do processador LAPI DOpaCA LAMBA.

- Caracter�sticas do processador:
. Arquitetura de 32 bits;
. 16 GPR de 32 bits de largura;
. ISA composta por 42 instru��es;
. Organiza��o de dados na mem�ria do tipo big endian;
. Mem�ria endere�ada ao n�vel da palavra, ou seja, cada endere�o de mem�ria corresponde a uma palavra de
  4 bytes;
. Suporte a Overflow.

- C�digo assembly
. As instru��es devem inseridas no arquivo input.txt;
. As instru��es ser�o automaticamente carregadas na mem�ria de instru��es a partir deste arquivo quando o
  simulador for executado.

- Instru��es
. O processador executa as instru��es: lch, add, nega, or, and, shift.

- Par�metros
. Dois par�metros s�o requisitados para o funcionamento do simulador:
  1. arquivo input.txt contendo as instru��es
  2. n�mero de instru��es presentes no arquivo (requisitado ao iniciar a simula��o)




Processador do trio Jo�o Pedro, Henderson e Weverson .
