private
actionsForCurrentToken
	| actions |
	actions := super actionsForCurrentToken.
	actions isEmpty
		ifTrue: [ (currentToken ids includes: scanner rightBraceId)
				ifTrue: [ | i scannerState stackItem |
					i := nodeStack size.
					scannerState := nil.
					[ i > 0 and: [ scannerState isNil ] ]
						whileTrue: [ stackItem := nodeStack at: i.
							(stackItem = #interpolatedString or: [ stackItem = #interpolatedVerbatimString ])
								ifTrue: [ scannerState := stackItem ].
							i := i - 1 ].
					scannerState notNil
						ifTrue: [ self state: scannerState.
							self position: currentToken startPosition - 1.
							currentToken := nil.
							self getNextToken.
							self state: #default.
							(currentToken ids includes: scanner rightBraceId)
								ifTrue: [ ^ actions ].
							^ self actionsForCurrentToken ] ].
			(currentToken ids includes: scanner gtgtId)
				ifTrue: [ currentToken := currentToken class value: '>' start: currentToken startPosition ids: (Array with: scanner gtId).
					self position: currentToken startPosition.
					actions := super actionsForCurrentToken ] ].
	^ actions