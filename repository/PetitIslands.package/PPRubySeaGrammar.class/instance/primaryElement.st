grammar
primaryElement
	^ onside, 
		(classDef /
		moduleDef /
		eigenDef /
		methodDef)
	==> #second