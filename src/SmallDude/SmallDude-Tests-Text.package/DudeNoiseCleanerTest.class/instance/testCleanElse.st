testing
testCleanElse
	| aNoiseCleaner text cleanText |
	aNoiseCleaner := DudeNoiseCleaner new.
	text := OrderedCollection new.
	text add: 'bla bla else bla else'.
	text add: 'bubu'.
	text add: 'else'.
	cleanText := aNoiseCleaner specificClean: text.
	self assert: (cleanText at: 1) equals: 'bla bla  bla '.
	self assert: (cleanText at: 2) equals: 'bubu'.
	self assert: (cleanText at: 3) equals: ''