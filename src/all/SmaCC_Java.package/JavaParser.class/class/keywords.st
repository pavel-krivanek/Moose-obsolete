private
keywords
	^ keywords
		ifNil:
			[ keywords := #('return' 'public' 'private' 'super' 'throw' 'null' 'else' 'while' 'for' 'do' 'new')
				asSet ]