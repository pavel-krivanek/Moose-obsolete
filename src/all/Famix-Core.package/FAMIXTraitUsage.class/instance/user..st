accessing
user: aType
	user := FMMultivalueLink on: self
					update: #outgoingTraitUsages
					from: self user
					to: aType