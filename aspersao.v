module Aspersao(AS, GT_wire, US, AL);
	input GT_wire, US, AL;
	output AS;
	
	not(AL_barrado, AL);
	
	nor NotOr0(AS_1, GT_wire, US);
	and And0(AS, AS_1, AL_barrado);
	
endmodule
