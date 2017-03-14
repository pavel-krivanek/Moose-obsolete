*SmallDude-Moose-accessing derived
allDuplicatingClasses 
	 
	<navigation: 'Classes with fragments duplicated here'> 
	| files | 
	files := OrderedCollection new. 
	self allExternalDuplications 
		do: 
			[:dup |  
			| other | 
			other := dup referenceCode entity. 
			self ~= other 
				ifTrue: 
					[files 
						indexOf: other 
						ifAbsent: [files add: other]]. 
			other := dup duplicateCode entity. 
			self ~= other 
				ifTrue: 
					[files 
						indexOf: other 
						ifAbsent: [files add: other]]]. 
	^MooseGroup 
		withAll: files 
		withDescription: 'All classes with parts duplicated in ' , self mooseName