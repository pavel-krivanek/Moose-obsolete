instance creation
target: aTargetString data: aString
	^ self basicNew
		setTarget: aTargetString;
		setData: aString;
		yourself