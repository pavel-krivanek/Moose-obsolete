compiling
compileOneToManySetter: fameProperty
	| pattern |
	pattern := '<1s>: <2s>
	<3s> := FMMultivalueLink on: self
					update: #<4s>
					from: self <1s>
					to: <2s>'.
	rbClass 
		compile: (pattern 
			expandMacrosWith: (self methodNameFor: fameProperty)
			with: (self parameterNameFor: fameProperty type)
			with: (self instvarNameFor: fameProperty)
			with: (self instvarNameFor: fameProperty opposite))
		classified: #accessing