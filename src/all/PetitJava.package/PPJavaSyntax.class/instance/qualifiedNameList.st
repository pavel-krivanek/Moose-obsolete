grammar-classes-method
qualifiedNameList 

	^ qualifiedName , ((self tokenFor: ',') , qualifiedName ) star