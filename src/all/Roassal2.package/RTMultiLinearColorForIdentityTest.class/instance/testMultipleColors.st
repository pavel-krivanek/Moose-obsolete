tests
testMultipleColors

	| v wordsToHighlight normalizer shape strings es |
	v := RTView new.
	
	wordsToHighlight := #('red' 'yellow' 'green' ).
	normalizer := RTMultiLinearColorForIdentity new.
	normalizer colors: (Array with: Color red with: Color yellow with: Color green).
	normalizer objects: wordsToHighlight.
	normalizer defaultColor: Color magenta.
	shape := RTBox new color: normalizer.
	strings := 'red yellow green fa' substrings.
	es := shape elementsOn: strings.
	v addAll: es.
	RTHorizontalLineLayout new gapSize: 1; on: es.

	self assert: (v elementFromModel: 'red') trachelShape color equals: Color red.
	self assert: (v elementFromModel: 'yellow') trachelShape color equals: Color yellow.
	self assert: (v elementFromModel: 'green') trachelShape color equals: Color green.
	self assert: (v elementFromModel: 'fa') trachelShape color equals: Color magenta.
	"playing with the level directly instead of use "
	"common cases"
	self assert: (normalizer level: 0) equals: Color red.
	self assert: (normalizer level: 1) equals: Color green.
	self assert: (normalizer level: 0.5) equals: Color yellow.
	self deny: (normalizer level: 0.30) == Color red.
	self deny: (normalizer level: 0.30) == Color green.
	self deny: (normalizer level: 0.30) == Color yellow.
	"rare cases"
	self assert: (normalizer level: -10) equals: Color red.
	self assert: (normalizer level: 10) equals: Color green.
	
	