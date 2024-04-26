module Gotejamento(US, UA, T, M, alarm_wire, GT);
	input US, UA, T, M, alarm_wire;
	output GT;
	
	not Not1(alarme_barrado, alarm_wire);
	
	not Not0(us_barrado, US);
	and And0(ua0_us1, us_barrado, UA);
	
	nor NotOr0(t0_m0, T, M);
	or Or0(ativa1, t0_m0, T);
	
	and And1(GT, ua0_us1, ativa1, alarme_barrado);
	
endmodule
