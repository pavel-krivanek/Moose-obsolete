testing
testDDExactChunkSize
	| det entities dupList dup |
	entities := OrderedCollection new.
	entities
		add:
			(DudeDummyEntity new
				name: 'aSource'
				code:
					' 
x 
y 
sdfs 
z 
t 
').
	entities
		add:
			(DudeDummyEntity new
				name: 'yetAnotherSource'
				code:
					' 
x 
t 
y 
z 
t 
').
	det := DudeDetector new: DudeCStyleFiles from: entities inModel: MooseModel new.
	dupList := ((det getMultiplicationsWith: 4 withSizeOfExactChunk: 1 withLineBias: 2) at: 1) duplications.	"Transcript show: (dupList toString);cr."
	self assert: det notNil.
	self assert: dupList notNil.
	self assert: dupList size equals: 1.
	dup := dupList at: 1.
	self
		assert:
			((dup signature = 'E1.I1.E1.D1.E2' and: [dup referenceCode entity = (entities at: 1)])
				or: [ dup signature = 'E1.M2.E2' and: [dup duplicateCode entity = (entities at: 1)] ])