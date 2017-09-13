accessing
book: aBook
	book := OPUMLToOneLink
		on: self
		update: #reviews
		from: book
		to: aBook