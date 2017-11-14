accessing
externalEntityResolver
	^ externalEntityResolver
		ifNil: [
			externalEntityResolver :=
				self saxHandler externalEntityResolver
					asLimitingExternalEntityResolver]