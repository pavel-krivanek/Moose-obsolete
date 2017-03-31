accessing
clearAll 
	 
	1 
		to: self basicSize 
		do: [:index | self basicAt: index put: 0]