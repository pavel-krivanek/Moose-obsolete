parsing
nextNameOptional: aBoolean
	| name |

	(name := readStream nextName)
		ifNil: [
			aBoolean
				ifFalse: [self errorExpectedName]].
	^ name.