compiling
compileSimpleSetter: fameProperty
	rbClass 
		compile: ('<1s>: <2s><n><t><3s> := <2s>' 
			expandMacrosWith: (self methodNameFor: fameProperty)
			with: (self parameterNameFor: fameProperty type)
			with: (self instvarNameFor: fameProperty))
		classified: #accessing