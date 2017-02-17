actions
contextFrameOkButtonActions
	"make all the things that have to be done when the user click on the context frames ok button."
	
	contextFrame allSelected 
		ifTrue: [ 
			centralCheckbox disable.
			centralCheckbox buttonMorph state: #on.
			]
		ifFalse: [
			centralCheckbox enable.
			centralCheckbox buttonMorph state: #off.
			].
		
		contextFrame close.
		detailContextButton enable.
