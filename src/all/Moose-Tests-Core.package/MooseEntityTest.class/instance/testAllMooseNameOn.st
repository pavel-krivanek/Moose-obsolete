tests
testAllMooseNameOn
	| t str ins |
	MooseEntity allSubclasses
		do: [ :cls | 
			str := WriteStream on: String new.
			ins := cls new.
			self shouldnt: [ t := ins mooseName ] raise: Error.
			self assert: t isByteString.
			ins mooseNameOn: str.
			self assert: str contents equals: t ]