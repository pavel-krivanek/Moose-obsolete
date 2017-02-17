actions
executeAction
	| currentPosition |

	currentPosition := self session stream position.
	self session
		stepUntil: (self streamToDifferentPositionThan: currentPosition) from: self startContext.