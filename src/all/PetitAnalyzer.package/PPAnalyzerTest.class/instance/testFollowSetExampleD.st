testing-followset
testFollowSetExampleD
	| grammar followSets |
	grammar := self grammarD.
	followSets := (grammar at: #S) followSets.
	self assert: (followSets at: (grammar at: #S)) includes: 'a' epsilon: true.
	self assert: (followSets at: (grammar at: #A)) includes: 'ab' epsilon: true.
	self assert: (followSets at: (grammar at: #B)) includes: 'ab' epsilon: true.
	self assert: (followSets at: (grammar at: #a)) includes: 'ab' epsilon: true.
	self assert: (followSets at: (grammar at: #b)) includes: 'ab' epsilon: true