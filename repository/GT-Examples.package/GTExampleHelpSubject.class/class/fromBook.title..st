instance creation
fromBook: aString1 title: aString2
	^ self new 
		bookName: aString1;
		title: aString2;
		yourself