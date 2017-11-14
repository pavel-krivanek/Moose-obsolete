resolving
resolveForExternalEntity: anExternalEntity
	| externalEntityURI |

	externalEntityURI :=
		self resolver
			externalEntityURIFromPublicID: self publicID
			systemID: self systemID
			baseURI: self baseURI.

	anExternalEntity
		resolvedReplacement: (self resolver resolveExternalEntityURI: externalEntityURI);
		uri: externalEntityURI asString;
		unresolvedReplacement: nil.