accessing
replaceFrom: aStart to: aStop with: aReplacementCollection startingAt: aReplacementStart
	| offset |

	offset := 0.
	[aStart + offset <= aStop]
		whileTrue: [
			self
				at: aStart + offset
				put: (aReplacementCollection at: aReplacementStart + offset).
			offset := offset + 1].