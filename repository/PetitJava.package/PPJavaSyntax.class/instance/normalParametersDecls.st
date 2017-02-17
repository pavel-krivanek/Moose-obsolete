grammar-classes
normalParametersDecls
	
	^ normalParameterDecl , 
		((self tokenFor: ',') , normalParameterDecl) star