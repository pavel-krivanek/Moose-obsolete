accessing
target: aContainerEntity
	target := FMMultivalueLink on: self
					update: #incomingReferences
					from: self target
					to: aContainerEntity