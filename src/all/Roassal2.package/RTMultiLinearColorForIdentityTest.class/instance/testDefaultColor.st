tests
testDefaultColor

	| v wordsToHighlight normalizer shape strings es |
	v := RTView new.
	
	wordsToHighlight := #('all' 'me' 'you').
	normalizer := RTMultiLinearColorForIdentity new.
	normalizer objects: wordsToHighlight.
	normalizer defaultColor: Color yellow.
	shape := RTBox new color: [ :w | normalizer rtValue: w ].
	strings := 'you and me make us all' substrings.
	es := shape elementsOn: strings.
	v addAll: es.
	es @ RTPopup.
	RTHorizontalLineLayout new gapSize: 1; on: es.

	self assert: (v elementFromModel: 'make') trachelShape color equals: Color yellow