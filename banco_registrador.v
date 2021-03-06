module Banco_Registro (
  Habilita, // Habilita a escrita no registrador
  IN_OUT_A,    // Endereco da entrada de dados e da saida de dados A, sua função depende do estado de "Hab_Escrita"
  OUT_B,      // Endereco da saida de dados B
  reset,       // Limpa todos os registros
  clock,       // Pulso de clock
  A,           // Saida A do Banco de Registros
  B,           // Saida B do Banco de Registros
  E);          // Entrada E do Banco de Registros - novo registro a ser armazenado

  parameter bits_palavra = 32;
  parameter end_registros = 4; // Quantidade de bits necessários para endereçar os registros
  parameter num_registros = 16; // Quantidade de registros do Banco de Registros (num_registros = (end_registros^2)-1;)

  output reg [bits_palavra-1:0] A, B;
  input [bits_palavra-1:0] E;
  input reg [2:0] IN_OUT_A, OUT_B;
  input reset, clock;
  input reg Hab_Escrita;
  reg [bits_palavra-1:0] registro [num_registros-1:0];	// Um vetor de "num_registros" palavras de "bits_palavra" bits


	always @(negedge clock, posedge reset) begin

			if(reset) begin
        registro[0] = 16'b00000000000000000000000000000000;
				registro[1] = 16'b00000000000000000000000000000000;
				registro[2] = 16'b00000000000000000000000000000000;
				registro[3] = 16'b00000000000000000000000000000000;
				registro[4] = 16'b00000000000000000000000000000000;
				registro[5] = 16'b00000000000000000000000000000000;
				registro[6] = 16'b00000000000000000000000000000000;
				registro[7] = 16'b00000000000000000000000000000000;

        registro[8] = 16'b00000000000000000000000000000000;
        registro[9] = 16'b00000000000000000000000000000000;
        registro[10] = 16'b00000000000000000000000000000000;
        registro[11] = 16'b00000000000000000000000000000000;
        registro[12] = 16'b00000000000000000000000000000000;
        registro[13] = 16'b00000000000000000000000000000000;
        registro[14] = 16'b00000000000000000000000000000000;
        registro[15] = 16'b00000000000000000000000000000000;

			end
			else if(Habilita) begin
				registro[IN_OUT_A] = E;
				A = registro[IN_OUT_A];
		    end else begin
				A = registro[IN_OUT_A];
				B = registro[OUT_B];
			end

	end

endmodule
