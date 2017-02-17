private
resolveExternalEntityWith: aBlock
	| result |

	self checkExternalEntityLimit.
	result := aBlock value: self maxExternalEntitySize.
	self incrementTotalResolvedExternalEntities.

	^ result.