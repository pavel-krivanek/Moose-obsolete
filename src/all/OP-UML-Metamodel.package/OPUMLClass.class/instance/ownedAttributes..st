accessing
ownedAttributes: aProperty
	"The attributes (i.e., the Properties) owned by the Class."
	self ownedAttributes
		removeAll;
		addAll: aProperty