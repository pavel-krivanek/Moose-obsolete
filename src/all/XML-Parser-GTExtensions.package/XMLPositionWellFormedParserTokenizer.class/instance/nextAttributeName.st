tokenizing
nextAttributeName
	| name |

	isInAttlistDeclaration
		ifTrue: [
			driver handleStartNamePosition: self currentPosition + 1.
			name := super nextAttributeName.
			driver handleEndNamePosition: self currentPosition]
		ifFalse: [
			driver handleStartQuotedStringNamePosition: self currentPosition + 1.
			name := super nextAttributeName.
			driver handleEndQuotedStringNamePosition: self currentPosition].

	^ name.