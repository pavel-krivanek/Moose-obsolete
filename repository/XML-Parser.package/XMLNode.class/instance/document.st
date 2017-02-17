accessing
document
	"returns the document node that the receiver belongs to (the receiver if it's a
	document) or nil if there isn't one"

	^ self parent ifNotNil: [:node | node document]