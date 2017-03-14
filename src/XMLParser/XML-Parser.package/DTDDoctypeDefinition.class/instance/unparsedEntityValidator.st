accessing
unparsedEntityValidator
	^ unparsedEntityValidator
		ifNil: [
			unparsedEntityValidator :=
				XMLUnparsedEntityValidator
					unparsedEntities: self unparsedEntities
					notations: self notations]