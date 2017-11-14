accessing
trait: aTrait
	trait := FMMultivalueLink on: self
					update: #incomingTraitUsages
					from: self trait
					to: aTrait