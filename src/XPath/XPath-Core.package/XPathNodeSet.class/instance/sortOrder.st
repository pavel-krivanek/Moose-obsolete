private
sortOrder
	sortOrder
		ifNil: [
			sortOrder :=
				self size > 1
					ifTrue: [XPathUnknownSortOrder new]
					ifFalse: [
						"safe for node sets with <= 1 node"
						XPathLevelDocumentSortOrder new]].
	^ sortOrder.