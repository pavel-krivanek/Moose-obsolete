testing
testDudeSourceCodeLine
	| entities det |
	entities := OrderedCollection new.
	entities
		add:
			(DudeDummyEntity new
				name: 'aSource'
				code:
					' 

toto
{
sdfs 
// dcjdfhj
}
titi
').
	det := DudeDetector new: DudeCStyleFiles from: entities inModel: nil.
	self assert: det codeBase size equals: 1.
	self assert: det codeBase values first size equals: 3.
	self assert: det codeBase values first first lineno equals: 3.
	self assert: det codeBase values first second lineno equals: 5.
	self assert: det codeBase values first third lineno equals: 8