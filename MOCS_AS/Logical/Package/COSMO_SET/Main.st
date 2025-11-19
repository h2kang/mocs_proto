
PROGRAM _INIT
	(* Insert code here *)
	OpcUA_cmd;
	OpcUA_modifier;
	OpcUA_mon;
	OpcUA_set_1[0] := 0;
	//OpcUA_set_15[0] := 0;
	//OpcUA_set_30[0] := 0;
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	
	OpcUA_mon[0] := 100;
	IF OpcUA_set_1[0] = 1 THEN
		FOR idx := 1 TO 10 DO
			OpcUA_mon[10+idx] := OpcUA_set_1[idx];
		END_FOR;
			OpcUA_set_1[0] := 0;
	END_IF;
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

