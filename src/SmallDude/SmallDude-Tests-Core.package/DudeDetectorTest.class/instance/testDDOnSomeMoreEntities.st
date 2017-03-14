testing
testDDOnSomeMoreEntities
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
a 
b 
c 
d 
e 
f 
g 
').
	entities
		add:
			(DudeDummyEntity new
				name: 'bad_bogus'
				code:
					' 
d 
e 
f 
g 
d 
e 
').
	entities
		add:
			(DudeDummyEntity new
				name: 'really_bad_bogus'
				code:
					' 
f 
g 
a 
b 
c 
d 
').
	det := DudeDetector new: DudeCStyleFiles from: entities inModel: MooseModel new.
	dupList := det getExactDuplications: 3.
	self assert: det ~= nil.
	self assert: dupList ~= nil.
	self assert: dupList size equals: 4