grammar-classes
normalParametersWithElipsisDecls
	
	^ (normalParameterDecl , 
		(self tokenFor: ',')) plus , 
		ellipsisParameterDecl