accessing
ownedAttributes: aProperty
	"The attributes owned by the DataType."
	self ownedAttributes
		removeAll;
		addAll: aProperty