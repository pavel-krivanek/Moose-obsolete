accessing
ownedOperations: anOperation
	"The Operations owned by the Interface."
	self ownedOperations
		removeAll;
		addAll: anOperation