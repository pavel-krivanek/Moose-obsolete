private
afterAdding: anObject at: anIndex
	observer
		ifNotNil: [
			observer
				added: anObject
				to: self]