accessing
parentPackage
	"return the packagehistory it is packaged in"
	containingPackageHistory isNil ifTrue: 
		[ containingPackageHistory := (self referenceHistory allPackageHistories select: 
			[ :each | 
			each hasUniqueName: self first versionEntity parentPackage historicalUniqueName ]) first ].
	^ containingPackageHistory