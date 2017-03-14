removing
remove: anElement ifAbsent: exceptionBlock 
	
	values remove: anElement ifAbsent: [ ^exceptionBlock value ].
	anElement perform: opposite with: nil.
	^anElement