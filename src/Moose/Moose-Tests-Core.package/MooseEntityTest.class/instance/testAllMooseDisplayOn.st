tests
testAllMooseDisplayOn
	| t str ins |
	(MooseEntity withAllSubclasses reject: #hasAbstractMethods)
		do: [ :cls | 
			str := WriteStream on: String new.
			ins := cls new.
			self shouldnt: [ t := ins mooseDisplayString ] raise: Error.
			self assert: t isByteString.
			ins mooseDisplayStringOn: str.
			self assert: str contents equals: t ]