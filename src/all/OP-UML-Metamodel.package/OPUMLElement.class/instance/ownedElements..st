accessing
ownedElements: anElement
	"The Elements owned by this Element."
	self ownedElements
		removeAll;
		addAll: anElement