accessing
aliasedType: aType
	aliasedType := FMMultivalueLink on: self
					update: #typeAliases
					from: self aliasedType
					to: aType