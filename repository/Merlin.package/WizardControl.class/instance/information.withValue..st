accessing
information: aSymbol withValue: value 
	"set the value of the information designed by aSymbol. It is used by a pane when a next button or a terminate button is clicked to spread its output information"
	
	wizardInformations 
		at: aSymbol
		put: value