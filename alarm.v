module Alarme(A, M, B, Alarm);

    input A, M, B;
    output Alarm;
	 
    not Not0(m_barrado, M);
	 not Not1(b_barrado, B);
	 
	 and And0(Alarm0, A, m_barrado);
	 or Or0(Alarm, Alarm0, b_barrado);
	 
endmodule
