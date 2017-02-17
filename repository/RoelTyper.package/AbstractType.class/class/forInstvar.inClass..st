instance creation
forInstvar: iv inClass: aClass
	^(self basicNew initialize)
		ivarName: iv;
		ivarClass: aClass;
		yourself