accessing
contentStringAt: aName
	"Returns the content string of the first element child of the receiver
	whose qualified or local name matches aName or an empty string if there
	isn't one.

	See also #rawContentStringAt:"

	^ self nodes contentStringAt: aName