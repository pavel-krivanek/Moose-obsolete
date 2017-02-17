accessing
elementAt: aName namespaceURI: aURI ifAbsent: aBlock
	"returns the first element child of the receiver whose qualified or
	local name matches aName and whose namespace URI matches aURI or the
	value of aBlock if there isn't one"

	^ self nodes
		elementAt: aName
		namespaceURI: aURI
		ifAbsent: aBlock