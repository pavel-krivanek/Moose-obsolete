testing
testDDChunkSizeOneOnEdges
	| det entities dupList dup |
	entities := OrderedCollection new.
	entities
		add:
			(DudeDummyEntity new
				name: 'aSource'
				code:
					' 
x 
a 
b 
c 
t 
').
	entities
		add:
			(DudeDummyEntity new
				name: 'yetAnotherSource'
				code:
					' 
x 
h 
j 
t 
').
	det := DudeDetector new: DudeCStyleFiles from: entities inModel: MooseModel new.
	dupList := ((det getMultiplicationsWith: 4 withSizeOfExactChunk: 1 withLineBias: 3) at: 1) duplications.	"Transcript show: (dupList toString);cr."
	self assert: det ~= nil.
	self assert: dupList ~= nil.
	self assert: dupList size equals: 1.
	dup := dupList at: 1.
	self
		assert:
			((dup signature = 'E1.D1.M2.E1' and: [ dup referenceCode entity = (entities at: 1) ])
				or: [ dup signature = 'E1.I1.M2.E1' and: [ dup duplicateCode entity = (entities at: 1) ] ])