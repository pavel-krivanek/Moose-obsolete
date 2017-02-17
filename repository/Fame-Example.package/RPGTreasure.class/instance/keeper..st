accessing
keeper: aDragon
	keeper := FMMultivalueLink on: self
					update: #hoard
					from: self keeper
					to: aDragon