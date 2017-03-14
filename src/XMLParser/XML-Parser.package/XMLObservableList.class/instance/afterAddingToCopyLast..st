private
afterAddingToCopyLast: anObject
	"can be used to handle appending existing elements to a copy separately and
	more efficiently than #afterAddingLast: so not as much checking needs to be
	done (because no new elements are being added to the copy)"

	self afterAddingLast: anObject