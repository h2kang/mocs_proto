
TYPE
	X20IOMat_typ : 	STRUCT 
		CommModule : Common_MAT_typ;
		IndivModule : ARRAY[0..7]OF Indiv_MAT_typ;
	END_STRUCT;
	Common_MAT_typ : 	STRUCT 
		DIF371 : DIF371_MAT_typ;
		DOF322 : DOF322_MAT_typ;
		AI8321 : AI8321_MAT_typ;
	END_STRUCT;
	Indiv_MAT_typ : 	STRUCT 
		DIF371 : DIF371_MAT_typ;
		DOF322 : DOF322_MAT_typ;
		AI8321 : ARRAY[0..2]OF AI8321_MAT_typ;
		AO4622 : AO4622_MAT_typ;
	END_STRUCT;
	DIF371_MAT_typ : 	STRUCT 
		Value : ARRAY[0..15]OF BOOL;
	END_STRUCT;
	DOF322_MAT_typ : 	STRUCT 
		Value : ARRAY[0..15]OF BOOL;
	END_STRUCT;
	AI8321_MAT_typ : 	STRUCT 
		Value : ARRAY[0..7]OF REAL;
	END_STRUCT;
	AO4622_MAT_typ : 	STRUCT 
		Value : ARRAY[0..3]OF REAL;
	END_STRUCT;
END_TYPE
