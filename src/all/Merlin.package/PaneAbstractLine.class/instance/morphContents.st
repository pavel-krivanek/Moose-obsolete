accessing - morph contents
morphContents 

	self groupBoxName isNil
		ifTrue: [
			^ self specificMorphContents
			]
		ifFalse: [
			^ self newGroupboxNamed:  self groupBoxName  With: self specificMorphContents 
			].