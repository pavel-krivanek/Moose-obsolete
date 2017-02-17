accessing
namespaceHistories
	
	^namespaceHistories
		ifNil:
			[namespaceHistories := self referenceHistory allNamespaceHistories
				select: [:each | each belongsTo = self]]