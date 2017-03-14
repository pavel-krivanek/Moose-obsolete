accessing
elementAt: aName
	"returns the first element child of the receiver whose qualified or
	local name matches aName or nil if there isn't one"

	^ self nodes elementAt: aName