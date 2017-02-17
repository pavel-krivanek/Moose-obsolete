converting
asXPathString
	^ self firstInDocumentOrder
		ifNil: ['']
		ifNotNil: [:node | node stringValue]