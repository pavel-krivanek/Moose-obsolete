accessing
name: aString

	| oldName |
	
	oldName := name.
	self backend setNameFor: self to: aString.
	self parent child: self renamedFrom: oldName to: aString.
