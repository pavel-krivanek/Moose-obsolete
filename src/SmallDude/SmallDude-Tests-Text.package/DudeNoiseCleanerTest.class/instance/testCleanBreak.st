testing
testCleanBreak
	| aNoiseCleaner text cleanText |
	aNoiseCleaner := DudeNoiseCleaner new.
	text := OrderedCollection new.
	text add: 'bla break;bla'.
	text add: 'bubu'.
	cleanText := aNoiseCleaner specificClean: text.
	self assert: (cleanText at: 1) equals: 'bla bla'.
	self assert: (cleanText at: 2) equals: 'bubu'