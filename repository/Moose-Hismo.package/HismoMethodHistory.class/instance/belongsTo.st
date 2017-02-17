accessing
belongsTo
	"return the classhistory it belongs to"
	
	containingClassHistory isNil
		ifTrue:
			[containingClassHistory := (self referenceHistory allClassHistories
				select:
					[:eachClass | eachClass hasUniqueName: self first versionEntity belongsTo mooseName])
				first].
	^containingClassHistory