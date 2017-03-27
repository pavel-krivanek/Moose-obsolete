private
precedingSiblingAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	^ self sortOrder
		on: self
		precedingSiblingAxis: aNodeTestStringOrBlock
		predicates: aPredicateCollection