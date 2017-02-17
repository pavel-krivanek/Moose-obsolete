wizard panes transition
performTerminateButtonAction	
	MooseCustomTask
		runWithProgress:
			[:bar |
				super performTerminateButtonAction .
				self doImport.
				bar increment.
		 ]
		description: 'generating mse file with jdt2famix'
		length: 1.
	
