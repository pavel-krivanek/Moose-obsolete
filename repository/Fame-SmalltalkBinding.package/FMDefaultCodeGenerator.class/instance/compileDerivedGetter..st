compiling
compileDerivedGetter: fameProperty
	rbClass 
		compile: ('<1s><n><t><2s><n><t>^self shoudBeImplemented' 
				expandMacrosWith: (self methodNameFor: fameProperty)
				with: (self annotationStringForProperty: fameProperty))
		classified: #accessing