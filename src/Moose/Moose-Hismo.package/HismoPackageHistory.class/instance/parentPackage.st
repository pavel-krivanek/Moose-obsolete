accessing
parentPackage
	"return the packagehistory it is packaged in"
	^ containingPackageHistory ifNil: 
		[ self first versionEntity parentPackage isNil 
			ifFalse: 
				[ containingPackageHistory := (self referenceHistory allPackageHistories select: 
					[ :eachClass | 
					eachClass hasUniqueName: self first versionEntity parentPackage historicalUniqueName ]) first ]
			ifTrue: [ nil ] ]