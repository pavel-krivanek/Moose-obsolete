testing
testDDWithChainsOnSomeMoreEntities
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
a 
b 
c 
asda 
asd 
d 
e 
f 
g 
').
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
				name: 'anotherSource'
				code:
					' 
x 
y 
xyc 
z 
t 
').
	entities
		add:
			(DudeDummyEntity new
				name: 'really_bad_bogus'
				code:
					' 
a 
b 
c 
ee 
f 
g 
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
	dupList := ((det getMultiplicationsWith: 4 withSizeOfExactChunk: 2 withLineBias: 2)
		collect: [ :aMulti | aMulti duplications ]) flatten.	"Transcript show: (dupList toString);cr."
	self assert: det ~= nil.
	self assert: dupList ~= nil.
	self assert: dupList size equals: 3	"self assert: ((dupList at: 1) signature = 'E3.I2.E4'). 
	self assert: ((dupList at: 2) signature = 'E3.D1.M1.E2'). 
	self assert: ((dupList at: 3) signature = 'E2.M1.E2')."