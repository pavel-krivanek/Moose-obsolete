accessing
encoding
	^ super encoding
		ifEmpty: [
			self document
				ifNil: ['']
				ifNotNil: [:node | node encoding]]