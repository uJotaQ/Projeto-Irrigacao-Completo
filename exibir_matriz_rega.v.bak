module exibir_matriz_rega(AS, US, GT, a7, b7, c7, d7, e7, f7, g7);
	input AS, US, GT;
	output a7, b7, c7, d7, e7, f7, g7;
	
	not not0(not_AS, AS);
	not not1(not_US, US);
	not not2(not_GT, GT);
	
	// A, C, E, F São ligadas a todo tempo.
	
	// LED (B)
	and And0(b7, not_US, not_AS, GT);
	
	
	// LED (D)
	and And1(d7, not_US, AS, not_GT);
	
	
	// LED (G)
	or Or0(g7, not_AS, GT, US);


endmodule
