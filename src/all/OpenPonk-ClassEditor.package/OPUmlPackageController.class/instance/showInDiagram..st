rendering
showInDiagram: aDiagramController
	self renderFigureIn: aDiagramController view.
	(self allShowableElementsInModel: self model)
		do: [ :each | 
			| subCtrl |
			subCtrl := aDiagramController newControllerFor: each.
			aDiagramController addController: subCtrl.
			subCtrl showInDiagram: aDiagramController ]