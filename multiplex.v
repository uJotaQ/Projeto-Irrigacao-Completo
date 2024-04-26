module multiplex(Seletor, in1, in2, out);
	input Seletor, in1, in2;
	output out;
	
	wire saida0;
	wire saida1;
	
	not (SL0, Seletor);
	
	and (saida0, in1, SL0);
	and (saida1, in2, Seletor);
	
	or (out, saida0, saida1);
	
endmodule
