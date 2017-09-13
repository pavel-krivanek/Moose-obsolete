tests - model
testRemoveFromModel
	| gs |
	diagramController
		showModelInDiagram: parent;
		showModelInDiagram: child;
		showModelInDiagram: generalization.
	gs := OPUMLGeneralizationSet new.
	gs generalizations add: generalization.
	controller := diagramController controllerForModel: generalization.
	controller removeModel.
	self assert: child generalizations asArray equals: #().
	self assert: generalization generalizationSets asArray equals: #().
	self assert: gs generalizations asArray equals: #()