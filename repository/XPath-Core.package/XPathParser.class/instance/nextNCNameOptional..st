parsing
nextNCNameOptional: aBoolean
	| ncName |

	(ncName := readStream nextNCName)
		ifNil: [
			aBoolean
				ifFalse: [self errorExpectedName]].
	^ ncName.