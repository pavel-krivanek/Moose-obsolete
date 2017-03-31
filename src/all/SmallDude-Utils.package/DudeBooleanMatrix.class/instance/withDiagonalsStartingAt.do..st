enumerating
withDiagonalsStartingAt: diagNo do: block 
	 
	diagNo 
		to: diagonals size 
		do: 
			[:index |  
			block 
				value: (diagonals at: index) 
				value: index]