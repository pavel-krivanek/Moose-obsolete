resolving
resolveExternalEntityURI: anXMLURIOrURIString upToLimit: aMaxSize
	| replacement |

	replacement :=
		self
			externalEntityAtURI: anXMLURIOrURIString
			ifAbsent: [
				self errorUnresolvableExternalEntityURI: anXMLURIOrURIString].

	(aMaxSize notNil
		and: [replacement size > aMaxSize])
		ifTrue: [
			self
				errorMaxExternalEntitySize: aMaxSize
				exceededByURI: anXMLURIOrURIString].
	
	^ DTDUndecodedResolvedExternalParsedEntityReplacement rawContents: replacement.