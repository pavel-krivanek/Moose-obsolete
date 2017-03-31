coord-transform
transformDiagNo: diagNo andDiagIndex: diagIx andDo: aBlock 
	" 
	[ C1 D1 E1 F1 G1 ]	 
	[ B1 C2 D2 E2 F2	] 
	[ A1 B2 C3 D3 E3 ] 
 
	[ E1 F1 G1 ] 
	[ D1 E2 F2 ] 
	[ C1 D2 E3 ] 
	[ B1 C2 D3 ] 
	[ A1 B2 C3 ] 
	" 
	 
	| row col | 
	noRows >= diagNo 
		ifTrue: 
			[col := diagIx. 
			row := noRows - diagNo + diagIx] 
		ifFalse: 
			[row := diagIx. 
			col := diagNo + diagIx - noRows]. 
	^aBlock value: row value: col