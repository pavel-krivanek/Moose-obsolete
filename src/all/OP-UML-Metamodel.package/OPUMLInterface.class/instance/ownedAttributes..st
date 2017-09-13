accessing
ownedAttributes: aProperty
	"The attributes (i.e., the Properties) owned by the Interface."
	self ownedAttributes
		removeAll;
		addAll: aProperty