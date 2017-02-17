accessing
superclass: newClass

	superclass := FMMultivalueLink on: self
					update: #subclasses
					from: self superclass
					to: newClass