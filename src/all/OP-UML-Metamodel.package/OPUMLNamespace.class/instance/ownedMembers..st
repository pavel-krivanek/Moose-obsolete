accessing
ownedMembers: aNamedElement
	"A collection of NamedElements owned by the Namespace."
	self ownedMembers
		removeAll;
		addAll: aNamedElement