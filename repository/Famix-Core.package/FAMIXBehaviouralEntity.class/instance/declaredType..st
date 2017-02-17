accessing
declaredType: aType
	declaredType :=  FMMultivalueLink on: self
					update: #behavioursWithDeclaredType 
					from: self declaredType
					to: aType