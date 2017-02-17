accessing
setScopedAttributesNamed: anAttributeCollection from: aDictionary
	| attributes |

	anAttributeCollection do: [:each |
		aDictionary
			at: each
			ifPresent: [:value |
				"used to copy only once if needed"
				(attributes ifNil: [attributes := self copiedScopedAttributes])
					at: each
					put: value]]