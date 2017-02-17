testing
testDDOnSomeOtherEntities
	| det entities dupList |
	entities := OrderedCollection new.
	entities
		add:
			(DudeDummyEntity new
				name: 'bogus'
				code:
					'
xxx 
zzz 
aaa 
aaa 
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
zzz 
aaa 
aaa 
qqq 
ddd 
eee 
').
	entities
		add:
			(DudeDummyEntity new
				name: 'really_bad_bogus'
				code:
					'
zzz 
aaa 
aaa 
').
	det := DudeDetector new: DudeCStyleFiles from: entities inModel: MooseModel new.
	dupList := det getExactDuplications: 2.	"Transcript show: (dupList toString);cr."
	self assert: det ~= nil.
	self assert: dupList ~= nil.
	self assert: dupList size equals: 3