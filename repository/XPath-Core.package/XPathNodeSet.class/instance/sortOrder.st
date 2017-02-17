private
sortOrder
	sortOrder
		ifNil: [
			self size > 1
				ifTrue: [sortOrder := XPathUnknownSortOrder new]
				ifFalse: [
					"safe for node sets with <= 1 node"
					sortOrder := XPathDocumentSortOrder new]].
	^ sortOrder.