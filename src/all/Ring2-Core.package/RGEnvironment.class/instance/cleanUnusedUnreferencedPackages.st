cleaning
cleanUnusedUnreferencedPackages

	"remove packages that are not not used"
	
	| referenced unreferenced |
	
	referenced := IdentitySet new.
	self ask behaviorsDo: [ :each |
		referenced addAll: each referencedPackages ].
	
	unreferenced := (self ask packages copyWithoutAll: referenced).

	unreferenced do: [:each | self removePackage: each  ].
	
	^ unreferenced