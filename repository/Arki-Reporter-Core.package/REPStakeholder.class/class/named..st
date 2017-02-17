instance creation
named: aString
	^ self byName at: aString ifAbsentPut: [self new name: aString]