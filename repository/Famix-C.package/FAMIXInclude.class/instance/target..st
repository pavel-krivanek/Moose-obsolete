accessing
target: aFile
	target := FMMultivalueLink on: self
					update: #incomingIncludeRelations
					from: self target
					to: aFile
