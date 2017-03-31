private
isOppositeMultivalued: aDependency
	^ (aDependency class mooseDescription attributes detect: [ :att | att isSource ])  isMultivalued