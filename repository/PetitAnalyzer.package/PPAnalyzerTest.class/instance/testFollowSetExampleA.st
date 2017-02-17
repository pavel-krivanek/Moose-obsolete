testing-followset
testFollowSetExampleA
	| grammar followSets |
	grammar := self grammarA.
	followSets := (grammar at: #S) followSets.
	self assert: (followSets at: (grammar at: #a)) includes: 'bc' epsilon: false.
	self assert: (followSets at: (grammar at: #b)) includes: 'bc' epsilon: false.
	self assert: (followSets at: (grammar at: #c)) includes: 'd' epsilon: false.
	self assert: (followSets at: (grammar at: #d)) includes: '' epsilon: true.
	self assert: (followSets at: (grammar at: #e)) includes: 'bc' epsilon: false.
	self assert: (followSets at: (grammar at: #S)) includes: '' epsilon: true.
	self assert: (followSets at: (grammar at: #A)) includes: 'bc' epsilon: false.
	self assert: (followSets at: (grammar at: #B)) includes: 'bc' epsilon: false