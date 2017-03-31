private
isOppositeMultivalued: aDependency
	^ (aDependency class mooseDescription attributes
		detect: [ :att | att isTarget ]) isMultivalued