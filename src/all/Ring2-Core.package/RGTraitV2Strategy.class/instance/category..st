private - backend access
category: aString

	| aTag |
		
	self owner cleanTagsWithoutAnnouncemnt.
	aTag := self owner package 
		ifNotNil: [ 
			self owner package name = aString
				ifTrue: [ ^ self owner ] "category contains only the package name"
				ifFalse: [ aString withoutPrefix: self package name, '-'  ]]
		ifNil: [ aString ].
	self owner tagWith: aTag asSymbol.

"	self backend forBehavior setCategoryFor: self to: aaString.
	
	self announcer behaviorDefinitionModified: self.
	self announcer behaviorRecategorized: self."