private
validateInput: wizardPane

	wizardPane 
		condition: [ :wi |
			(selectedDirectory entries select: [ :each | each fullName endsWith: '.mse' ]) notEmpty ] 
		named: 'You have to select a directory with MSE files'