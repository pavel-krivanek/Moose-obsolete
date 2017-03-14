accessing
rawContentStringAt: aName
	"returns the raw content string (without space inserted) of the first
	element child of the receiver whose qualified or local name matches aName
	or an empty string if there isn't one"

	^ self nodes rawContentStringAt: aName