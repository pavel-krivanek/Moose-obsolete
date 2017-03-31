removing
remove: anElement ifAbsent: exceptionBlock 
	
	values remove: anElement ifAbsent: [ ^exceptionBlock value ].
	(anElement perform: opposite) unsafeRemove: owner.
	^anElement