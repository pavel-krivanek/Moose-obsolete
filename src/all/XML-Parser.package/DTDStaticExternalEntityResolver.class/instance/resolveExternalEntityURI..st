resolving
resolveExternalEntityURI: anXMLURIOrURIString
	^ self resolveExternalEntityWith: [:maxSize | | replacement |
		replacement :=
			self
				externalEntityAtURI: anXMLURIOrURIString
				ifAbsent: [self errorUnresolvableExternalEntityURI: anXMLURIOrURIString].
		(maxSize notNil
			and: [replacement size > maxSize])
			ifTrue: [
				self
					errorMaxExternalEntitySize: maxSize
					exceededByURI: anXMLURIOrURIString].
		replacement]