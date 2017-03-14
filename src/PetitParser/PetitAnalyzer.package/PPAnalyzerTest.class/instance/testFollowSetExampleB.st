testing-followset
testFollowSetExampleB
	| grammar followSets |
	grammar := self grammarB.
	followSets := (grammar at: #E) followSets.
	self assert: (followSets at: (grammar at: #E)) includes: ')' epsilon: true.
	self assert: (followSets at: (grammar at: #Ep)) includes: ')' epsilon: true.
	self assert: (followSets at: (grammar at: #T)) includes: ')+' epsilon: true.
	self assert: (followSets at: (grammar at: #Tp)) includes: ')+' epsilon: true.
	self assert: (followSets at: (grammar at: #F)) includes: ')*+' epsilon: true