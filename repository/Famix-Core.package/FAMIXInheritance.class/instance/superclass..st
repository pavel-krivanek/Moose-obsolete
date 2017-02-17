accessing
superclass: aType
	superclass := FMMultivalueLink on: self
					update: #subInheritances
					from: self superclass
					to: aType