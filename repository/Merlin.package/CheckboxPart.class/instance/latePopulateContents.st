accessing
latePopulateContents
	
	|default|
	default := defaultValue meValue: self requiredInputs.
	default ifNotNil: [:aBoolean |
		self selected: aBoolean.	
		]. 
	
	"groupBoxName 
		ifNotNilDo: [:aStringOrABlock |self populateContents: {self newGroupboxNamed: (aStringOrABlock meValue: self requiredInputs)  With: checkbox}]
		ifNil: [self populateContents: {checkbox }]."
	