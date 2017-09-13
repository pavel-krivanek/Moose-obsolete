accessing
ownedLiterals: anEnumerationLiteral
	"The ordered set of literals owned by this Enumeration."
	self ownedLiterals
		removeAll;
		addAll: anEnumerationLiteral