actions
executeAction
	| currentPosition targetPosition |

	currentPosition := self session stream position.
	targetPosition := self position 
		ifNil: [ currentPosition + 1 ]
		ifNotNil: [ :anInteger | anInteger ].
		
	self session
		stepUntil: (self streamToPosition: targetPosition) from: self startContext.