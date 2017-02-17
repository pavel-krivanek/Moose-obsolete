accessing
source: aContainerEntity
	source := FMMultivalueLink on: self
					update: #outgoingReferences
					from: self source
					to: aContainerEntity