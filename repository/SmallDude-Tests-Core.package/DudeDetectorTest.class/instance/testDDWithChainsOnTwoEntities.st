testing
testDDWithChainsOnTwoEntities
	| det entities dupList |
	entities := OrderedCollection new.
	entities
		add:
			(DudeDummyEntity new
				name: 'bogus'
				code:
					' 
a 
b 
c 
d 
f 
g 
').
	entities
		add:
			(DudeDummyEntity new
				name: 'bad_bogus'
				code:
					' 
a 
b 
c 
as 
f 
g 
').
	det := DudeDetector new: DudeCStyleFiles from: entities inModel: MooseModel new.
	dupList := ((det getMultiplicationsWith: 4 withSizeOfExactChunk: 2 withLineBias: 2) at: 1) duplications.	"Transcript show: (dupList toString);cr."
	self assert: det ~= nil.
	self assert: dupList ~= nil.
	self assert: dupList size equals: 1.
	self assert: (dupList at: 1) signature equals: 'E3.M1.E2'