morph content setup tools
newDetailContextButton

	"return a button opening the context frame when clicked"
	
	^ detailContextButton := self 
		newButtonNamed: 'Details'
		withAction: #openContextFrame.