testing
testCreationWithSomeEntities
	| det entities exacts |
	entities := OrderedCollection new.
	entities
		add:
			(DudeDummyEntity new
				name: 'bogus'
				code:
					'I like pie  
pizza pie 
apple pie 
rad squared pi 
and other PIes 
').
	entities
		add:
			(DudeDummyEntity new
				name: 'bad_bogus'
				code:
					'and other PIes 
I like pie  
apple pie 
pizza pie 
').
	det := DudeDetector new: DudeCStyleFiles from: entities inModel: MooseModel new.
	exacts := det exactDupFor: (entities at: 1) and: (entities at: 2) withLength: 1.
	self assert: det ~= nil.
	self assert: exacts size equals: 4