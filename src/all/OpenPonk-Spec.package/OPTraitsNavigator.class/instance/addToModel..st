accessing
addToModel: aTrait

	| models canvasModel |	
		
 	models := aTrait traitGroupUMLModelFor: self owner project models first.

	canvasModel := (self owner editors at: self owner project models first) first canvasModel.
	
	models do: [ :each | canvasModel diagramController showModelInDiagram: each].
	
	canvasModel diagramController
		ifNotNil: [ :aController | aController updateView ]
	
			 
		