initialization
initializeWidgets

	label := self newLabel.
	label label: 'Simple example of combining Roassal and Spec' .

	button1 := self newButton.
	button1 label: 'Add Circle'.

	button2 := self newButton.
	button2 label: 'Layout!'.

	
	diagram := self instantiate: RoassalModel.	
	diagram script: [ :aView :canvas | self view: aView. aView @ RTDraggableView ].
"	diagram script: [ :view :canvas | self textAsCode value: view value: canvas ]"