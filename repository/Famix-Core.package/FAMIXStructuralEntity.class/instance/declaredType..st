accessing
declaredType: aType
	declaredType :=  FMMultivalueLink on: self
					update: #structuresWithDeclaredType 
					from: self declaredType
					to: aType