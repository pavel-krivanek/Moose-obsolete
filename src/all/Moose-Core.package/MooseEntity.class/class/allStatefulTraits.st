statefulTraits
allStatefulTraits

	^ (self withAllSuperclasses copyWithoutAll: MooseEntity allSuperclasses) flatCollect: [ :each | each statefulTraits ] as: Set
	