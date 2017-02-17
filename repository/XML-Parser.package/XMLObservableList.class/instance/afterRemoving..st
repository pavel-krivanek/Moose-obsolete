private
afterRemoving: anObject
	observer
		ifNotNil: [
			observer
				removed: anObject
				from: self]