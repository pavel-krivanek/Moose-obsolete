accessing
belongsTo
	"return the namespacehistory it belongs to"
	
	^containingNamespaceHistory
		ifNil:
			[self first versionEntity belongsTo isNil
				ifFalse:
					[containingNamespaceHistory := (self referenceHistory allNamespaceHistories
						select:
							[:eachClass | eachClass hasUniqueName: self first versionEntity belongsTo mooseName])
						first]
				ifTrue: [nil]]