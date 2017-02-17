compiling
compileOneToOneSetter: fameProperty
	| pattern |
	pattern := '<1s>: <2s>
	<3s> ~= <2s> ifTrue: [ | old |
		old := <3s>.
		<3s> := <2s>.
		old notNil ifTrue: [ old <4s>: nil ].
		<2s> notNil ifTrue: [ <2s> <4s>: self ]]'.
	rbClass
		compile: (pattern 
			expandMacrosWith: (self methodNameFor: fameProperty)
			with: (self parameterNameFor: fameProperty type)
			with: (self instvarNameFor: fameProperty)
			with: (self methodNameFor: fameProperty opposite))
		classified: #accessing