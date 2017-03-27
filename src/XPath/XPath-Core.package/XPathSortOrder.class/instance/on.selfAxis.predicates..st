enumerating
on: aNodeSet selfAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	^ (self
		on: aNodeSet
		selfAxis: aNodeTestStringOrBlock)
			filterEachInSeparateContextWithAll: aPredicateCollection