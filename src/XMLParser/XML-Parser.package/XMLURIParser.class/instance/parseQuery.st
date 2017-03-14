parsing
parseQuery
	"parse the query as an OrderedCollection of name=value associations
	to handle multiple values for the same key and different encoded keys
	that later percent/plus decode to the same key"

	| query key value |

	(self peekFor: $?)
		ifFalse: [^ OrderedCollection new: 0].

	query := OrderedCollection new.
	[self atEnd
		or: [(key := self nextDelimitedBy: QueryKeyDelimiters) isEmpty
			and: [self peek == $#]]]
		whileFalse: [| hasValue |
			(hasValue := self peekFor: $=)
				ifTrue: [value := self nextDelimitedBy: QueryValueDelimiters]
				ifFalse: [value := ''].
			(key notEmpty
				or: [hasValue])
				ifTrue: [query addLast: key -> value].
			self peekFor: $&].

	^ query.