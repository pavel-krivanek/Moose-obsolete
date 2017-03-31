accessing
source: aFile

	source := FMMultivalueLink on: self
					update: #outgoingIncludeRelations
					from: self source
					to: aFile
