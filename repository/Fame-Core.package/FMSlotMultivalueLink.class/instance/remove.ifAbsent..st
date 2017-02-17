removing
remove: anElement ifAbsent: exceptionBlock 
	
	values remove: anElement ifAbsent: [ ^exceptionBlock value ].
	slot remove: anElement from: owner.
	^anElement