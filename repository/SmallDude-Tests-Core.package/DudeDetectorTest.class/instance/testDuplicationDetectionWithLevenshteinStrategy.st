testing
testDuplicationDetectionWithLevenshteinStrategy
	| det entities dupList |
	entities := OrderedCollection new.
	entities
		add:
			(DudeDummyEntity new
				name: 'bogus'
				code:
					'
xxx
aaa
aba
qqq
ddd
eee
').
	entities
		add:
			(DudeDummyEntity new
				name: 'bad_bogus'
				code:
					'
qqq
aaa
aaa
ddd
eee
').
	det := DudeDetector
		new: DudeCStyleFiles
		from: entities
		withStrategy: (DudeLevenshteinDistanceStrategy new threshold: 0.5) getStrategyBlock
		inModel: MooseModel new.
	dupList := det getExactDuplications: 2.	"Transcript show: (dupList toString);cr."
	self assert: det ~= nil.
	self assert: dupList ~= nil.
	self assert: dupList size equals: 2