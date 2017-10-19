tests - removing
testRemoveFromModel
	| model |
	model := self newEmptyModel.
	diagramController model packagedElements add: model.
	diagramController showModelInDiagram: model.
	controller := diagramController controllerForModel: model.
	controller removeModel.
	self assert: diagramController view elements asArray equals: #().
	self assert: diagramController model packagedElements asArray equals: #().
	self assert: diagramController controllers asArray equals: #()