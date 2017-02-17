accessing
subclass: aType
	subclass := FMMultivalueLink on: self
					update: #superInheritances
					from: self subclass
					to: aType