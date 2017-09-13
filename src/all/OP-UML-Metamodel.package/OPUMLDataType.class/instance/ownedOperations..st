accessing
ownedOperations: anOperation
	"The Operations owned by the DataType."
	self ownedOperations
		removeAll;
		addAll: anOperation