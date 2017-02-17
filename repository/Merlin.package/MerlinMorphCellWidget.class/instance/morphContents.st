accessing - morph contents
morphContents
	self wizardCell groupBoxName
		ifNotNil:
			[ :aString | ^ self newGroupBoxNamed: aString with: self specificMorphContents ]
		ifNil: [ ^ self specificMorphContents ]