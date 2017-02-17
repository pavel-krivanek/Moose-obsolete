accessing
type 

	^type ifNil: [type := 
			((1 to: dimensions) 
				inject: elementType type 
				into: [:current :parenthesis |
					(current , '[]')]) ]