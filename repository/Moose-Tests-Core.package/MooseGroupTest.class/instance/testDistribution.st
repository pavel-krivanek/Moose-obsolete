tests
testDistribution
	| referenceGroupOfGroups group |
	referenceGroupOfGroups := MooseGroup new.
	referenceGroupOfGroups add: (MooseGroup withAll: #(1 2 3)).
	referenceGroupOfGroups add: (MooseGroup withAll: #(4 5 6 7 8)).
	group := MooseGroup new.
	self assert: (group distributionOverAGroupOfGroups: referenceGroupOfGroups) equals: 0.
	group := MooseGroup withAll: #(1 2 3).
	self assert: (group distributionOverAGroupOfGroups: referenceGroupOfGroups) equals: 1.
	group := MooseGroup withAll: #(1 2).
	self assert: (group distributionOverAGroupOfGroups: referenceGroupOfGroups) equals: 2 / 3.
	group := MooseGroup withAll: #(1 2 4 5).
	self assert: (group distributionOverAGroupOfGroups: referenceGroupOfGroups) equals: 2 / 3 + (2 / 5)