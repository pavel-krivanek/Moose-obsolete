instance creation
key: aKey value: aValue next: anItem
	^self new
		key: aKey;
		value: aValue;
		next: anItem;
		yourself.