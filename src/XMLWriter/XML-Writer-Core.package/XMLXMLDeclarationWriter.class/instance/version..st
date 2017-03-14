accessing
version: aVersionNumberOrString
	version :=
		aVersionNumberOrString isNumber
			ifTrue: [aVersionNumberOrString printShowingDecimalPlaces: 1]
			ifFalse: [| string |
				string := (aVersionNumberOrString ifNil: ['1.0']) asString.
				"avoid #first: for portability"
				string
					copyFrom: 1
					to: (string size min: 3)]