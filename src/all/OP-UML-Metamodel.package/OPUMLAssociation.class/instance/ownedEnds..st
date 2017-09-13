accessing
ownedEnds: aProperty
	"The ends that are owned by the Association itself."
	self ownedEnds
		removeAll;
		addAll: aProperty