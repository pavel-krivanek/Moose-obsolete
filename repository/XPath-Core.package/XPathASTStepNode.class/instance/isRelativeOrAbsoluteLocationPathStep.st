testing
isRelativeOrAbsoluteLocationPathStep
	^ self hasParent
		and: [| locationPath |
			(locationPath := self parent) isRelativeLocationPath
				or: [locationPath isAbsoluteLocationPath]]