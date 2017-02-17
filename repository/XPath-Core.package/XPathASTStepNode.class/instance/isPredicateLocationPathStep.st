testing
isPredicateLocationPathStep
	^ self hasParent
		and: [| locationPath |
			(locationPath := self parent) hasParent
				and: [locationPath parent isPredicate]]