private - backend access
category: aString

	| aTag |
		
	self owner cleanTags.
	aTag := self package 
		ifNotNil: [ 
			self package name = aString
				ifTrue: [ ^ self ] "category contains only the package name"
				ifFalse: [ aString withoutPrefix: self package name, '-'  ]]
		ifNil: [ aString ].
	self owner tagWith: aTag asSymbol.

"	self backend forBehavior setCategoryFor: self to: aaString.
	
	self announcer behaviorDefinitionModified: self.
	self announcer behaviorRecategorized: self."