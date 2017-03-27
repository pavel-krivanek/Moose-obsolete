private
followingSiblingAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	^ self sortOrder
		on: self
		followingSiblingAxis: aNodeTestStringOrBlock
		predicates: aPredicateCollection