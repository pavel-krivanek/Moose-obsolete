accessing
parentPackage: aPackage
	parentPackage := FMMultivalueLink on: self
					update: #childNamedEntities
					from: self parentPackage
					to: aPackage