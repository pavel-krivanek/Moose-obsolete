private
build: aParser right: aChoiceParser
	^ self fold: (aParser separatedBy: aChoiceParser) right: [ :a :op :b | op first value: a value: op second value: b ]