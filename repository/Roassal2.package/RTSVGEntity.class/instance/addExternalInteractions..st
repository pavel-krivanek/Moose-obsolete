interactions
addExternalInteractions: aSVGVisitor
	| ide |
	ide := 'pop' , self id.
	aSVGVisitor addExternalInteractions: ide element: self element.
	