private
afterAddingLast: anObject
	"can be used to handle appending separately and more efficiently than
	insertion"

	self
		afterAdding: anObject
		at: self size