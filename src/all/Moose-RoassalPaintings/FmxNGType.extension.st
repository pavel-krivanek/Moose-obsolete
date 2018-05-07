Extension { #name : #FmxNGType }

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> viewBlueprint [
	<menuItem: 'Class blueprint' category: 'Visualize'>
	| view |
	view := RTView new.
	view @ RTDraggableView.
	self viewBlueprintOn: view.
	^ view open
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> viewBlueprintOn: view [
	^ FAMIXClassBlueprint new view: self on: view
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> viewUML [
	<menuItem: 'UML class diagram' category: 'Visualize'> 
	
	| view |
	view := RTUMLClassBuilder new.
	self viewUMLOn: view.
	^ view openWithToolbarEntitled: 'UML class diagram'
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGType >> viewUMLOn: view [

	view
		addObjects: {self};
		classname: #name;
		instanceVariables: #attributes;
		methodsNames: #methods;
		methodselector: #name;
		superclass: nil
]
