private
build: aParser left: aChoiceParser
	^ self fold: (aParser separatedBy: aChoiceParser) left: [ :a :op :b | op first value: a value: op second value: b ]