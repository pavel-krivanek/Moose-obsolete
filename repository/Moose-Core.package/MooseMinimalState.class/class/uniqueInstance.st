instance creation
uniqueInstance 
	 
	^singelton ifNil: [singelton := self basicNew]