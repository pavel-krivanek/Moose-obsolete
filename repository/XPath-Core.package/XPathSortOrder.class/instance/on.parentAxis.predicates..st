enumerating
on: aNodeSet parentAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	^ (self
		on: aNodeSet
		parentAxis: aNodeTestStringOrBlock)
			filterEachInSeparateContextWithAll: aPredicateCollection