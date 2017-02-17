constants
English

	^ English ifNil: [English := (self englishStopwordString substrings: {Character space}). ]