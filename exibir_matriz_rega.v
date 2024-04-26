module exibir_matriz_rega(AS, US, GT, alarm_wire, a7, b7, c7, d7, e7, f7, g7);
	input AS, US, GT, alarm_wire;
	output a7, b7, c7, d7, e7, f7, g7;
	
	not not0(not_AS, AS);
	not not1(not_US, US);
	not not2(not_GT, GT);
	not not3(not_alarm, alarm_wire);
	
	// A, C, E, F São ligadas a todo tempo.
	
	// LED (B)
	and And0(b7, not_US, not_AS, GT, not_alarm);
	
	
	// LED (D)
	and And1(d7, not_US, AS, not_GT, not_alarm);
	
	
	// LED (G)
	or Or0(g7, not_AS, GT, US);


endmodule
