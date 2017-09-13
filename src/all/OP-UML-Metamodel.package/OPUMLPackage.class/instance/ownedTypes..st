accessing
ownedTypes: aType
	"References the packaged elements that are Types."
	self ownedTypes
		removeAll;
		addAll: aType