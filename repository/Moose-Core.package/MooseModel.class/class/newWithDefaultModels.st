private-instance creation
newWithDefaultModels 
	 
	| result | 
	result := self new. 
	(Pragma 
		allNamed: #defaultModel 
		in: self class) 
		do: [:pragma | result add: (self perform: pragma selector)]. 
	^result