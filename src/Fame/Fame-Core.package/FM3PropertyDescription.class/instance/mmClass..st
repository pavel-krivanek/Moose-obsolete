accessing
mmClass: newClass
	class := FMMultivalueLink on: self
					update: #attributes
					from: self mmClass
					to: newClass.