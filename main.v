module main(A, M, B, AL, VE, US, UA, T, GT, AS, SL, A7, B7, C7, D7, E7, F7, G7, DG1, DG2, DG3, BUZZ);

	input A, M, B, US, UA, T, SL;
	output AL, VE, GT, AS, A7, B7, C7, D7, E7, F7, G7, DG1, DG2, DG3, BUZZ;
	
	
	wire A1, B1, C1, D1, E1, F1, G1;
	wire A2, B2, C2, D2, E2, F2, G2;
	
	not (DG1, 1'b0);
	not (DG2, 1'b0);
	not (DG3, 1'b0);
	
	Alarme(A, M, B, AL);
	Valvula(AL, A, B, VE);
	Gotejamento(US, UA, T, M, AL, GT);
	Aspersao(AS, GT, US, AL);
	
	or (BUZZ, AL);
	
	exibir_matriz_nivel(A, M, B, A1, B1, C1, D1, E1, F1, G1);
	exibir_matriz_rega(AS, US, GT, AL, A2, B2, C2, D2, E2, F2, G2);
	
	multiplex(SL, A1, A2, A7);
	multiplex(SL, B1, B2, B7);
	multiplex(SL, C1, C2, C7);
	multiplex(SL, D1, D2, D7);
	multiplex(SL, E1, E2, E7);
	multiplex(SL, F1, F2, F7);
	multiplex(SL, G1, G2, G7);
	
endmodule
