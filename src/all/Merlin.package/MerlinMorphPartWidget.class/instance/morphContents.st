accessing - morph contents
morphContents
	self
		defaultValue: (self wizardPart defaultValue meValue: self wizardPart requiredInputs).
	self wizardPart groupBoxName
		ifNotNil:
			[ :aString | ^ self newGroupBoxNamed: aString with: self specificMorphContents ]
		ifNil: [ ^ self specificMorphContents ]