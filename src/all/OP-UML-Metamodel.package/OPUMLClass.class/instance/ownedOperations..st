accessing
ownedOperations: anOperation
	"The Operations owned by the Class."
	self ownedOperations
		removeAll;
		addAll: anOperation