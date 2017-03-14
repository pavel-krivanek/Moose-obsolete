initialize-release
initializeRows: m columns: n 
	" 
	[ C1 D1 E1 F1 G1 ]	 
	[ B1 C2 D2 E2 F2	] 
	[ A1 B2 C3 D3 E3 ] 
 
	[ E1 F1 G1 
	[ D1 E2 F2 
	[ C1 D2 E3 
	[ B1 C2 D3 
	[ A1 B2 C3 
	" 
	 
	(m = 0 or: [n = 0]) ifTrue: [Array new noMatchError]. 
	noRows := m. 
	noColumns := n. 
	diagonals := Array new: noRows + noColumns - 1. 
	1 
		to: noRows 
		do: 
			[:index |  
			diagonals 
				at: index 
				put: (DudeBooleanVector new: (noColumns min: index))]. 
	2 
		to: noColumns 
		do: 
			[:index |  
			diagonals 
				at: index + noRows - 1 
				put: (DudeBooleanVector new: (noRows min: noColumns + 1 - index))]