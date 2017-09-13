accessing
ownedParameters: aParameter
	"The parameters owned by this Operation."
	self ownedParameters
		removeAll;
		addAll: aParameter