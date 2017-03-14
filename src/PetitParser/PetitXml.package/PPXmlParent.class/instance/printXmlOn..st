printing
printXmlOn: aStream
	self children
		do: [ :each | each printXmlOn: aStream ]