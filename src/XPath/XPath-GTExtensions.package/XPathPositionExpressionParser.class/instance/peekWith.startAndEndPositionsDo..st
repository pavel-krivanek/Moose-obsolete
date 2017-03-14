private
peekWith: aFirstBlock startAndEndPositionsDo: aSecondBlock
	| oldPosition |

	oldPosition := self currentPosition.
	aFirstBlock value
		ifTrue: [
			aSecondBlock
				cull: oldPosition + 1
				cull: self currentPosition.
			^ true]
		ifFalse: [^ false].