accessing
elementAt: aName namespaceURI: aURI
	"returns the first element child of the receiver whose qualified or
	local name matches aName and whose namespace URI matches aURI or nil
	if there isn't one"

	^ self nodes
		elementAt: aName
		namespaceURI: aURI