instance creation
with: anElement andAll: aCollection
	
	^(self on: (MalArrayVector withAll: aCollection))
		item: anElement;
		yourself