parsing
parseAuthorityPrefix
	| oldPosition |

	oldPosition := self position.
	((self peekFor: $/)
		and: [self peekFor: $/])
		ifTrue: [^ true]
		ifFalse: [
			self position: oldPosition.
			^ false].