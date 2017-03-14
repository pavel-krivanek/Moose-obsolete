accessing
belongsTo
	"return the namespacehistory it belongs to"
	
	containingNamespaceHistory isNil
		ifTrue:
			[containingNamespaceHistory := (self referenceHistory allNamespaceHistories
				select:
					[:eachClass | eachClass hasUniqueName: self first versionEntity belongsTo mooseName])
				first].
	^containingNamespaceHistory