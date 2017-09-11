tests
testTwoColors

	| v wordsToHighlight normalizer shape strings es |
	v := RTView new.
	
	wordsToHighlight := #('green' 'red').
	normalizer := RTMultiLinearColorForIdentity new.
	normalizer colors: (Array with: Color green with: Color red).
	normalizer objects: wordsToHighlight.
	normalizer defaultColor: Color magenta.
	shape := RTBox new color: normalizer.
	strings := 'red yellow green' substrings.
	es := shape elementsOn: strings.
	v addAll: es.
	RTHorizontalLineLayout new gapSize: 1; on: es.

	self assert: (v elementFromModel: 'green') trachelShape color equals: Color green.
	self assert: (v elementFromModel: 'red') trachelShape color equals: Color red.