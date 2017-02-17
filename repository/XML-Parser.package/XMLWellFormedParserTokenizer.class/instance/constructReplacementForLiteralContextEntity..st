entity replacing
constructReplacementForLiteralContextEntity: anEntity
	| wasIgnoringLiteralValueTerminator |

	wasIgnoringLiteralValueTerminator := isIgnoringLiteralValueTerminator.
	isIgnoringLiteralValueTerminator := true.
	self
		pushBackEntity: anEntity
		whenPoppedDo: [
			isIgnoringLiteralValueTerminator := wasIgnoringLiteralValueTerminator].