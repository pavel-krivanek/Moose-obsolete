initialization
initializeWidgets

	label := self newLabel.
	label label: 'Enter code below. Both view and canvas are accessible' .

	text := self newText.
	text text: self startText.
	text autoAccept: true.

	button := self newButton.
	button label: 'Draw this!'.

	diagram := self instantiate: RoassalModel.	
	"This is the code for the Roassal view.
	The block takes both a view and a canvas."
	diagram script: [ :view :canvas | self textAsCode value: view value: canvas ]