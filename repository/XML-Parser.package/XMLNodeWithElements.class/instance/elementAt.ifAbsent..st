accessing
elementAt: aName ifAbsent: aBlock
	"returns the first element child of the receiver whose qualified or
	local name matches aName or the value of aBlock if there isn't one"

	^ self nodes
		elementAt: aName
		ifAbsent: aBlock