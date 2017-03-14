compiling
compileGetter: fameProperty
	rbClass 
		compile: ('<1s><n><t><2s><n><t>^<3s>' 
				expandMacrosWith: (self methodNameFor: fameProperty)
				with: (self annotationStringForProperty: fameProperty)
				with: (self instvarNameFor: fameProperty))
		classified: #accessing