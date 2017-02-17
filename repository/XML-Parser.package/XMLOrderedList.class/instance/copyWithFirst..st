copying
copyWithFirst: anObject
	^ self copyEmpty
		addLast: anObject;
		addAll: self;
		yourself