private
resolveExternalEntityWith: aBlock
	| result |

	self checkExternalEntityLimit.
	result := aBlock value.
	self incrementTotalResolvedExternalEntities.

	^ result.