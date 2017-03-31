testing
testCleanAllNoises
	| aNoiseCleaner text cleanText |
	aNoiseCleaner := DudeNoiseCleaner new.
	text := OrderedCollection new.
	text add: 'b{la break;bl}a'.
	text add: 'buelsebu'.
	cleanText := aNoiseCleaner specificClean: text.
	self assert: (cleanText at: 1) equals: 'bla bla'.
	self assert: (cleanText at: 2) equals: 'bubu'