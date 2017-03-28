tests
testTickOnYAxis

	| ds1 result expected |
	b := RTGrapher new.
	ds1 := RTData new.
	ds1 points: (1 to: 10).
	ds1 yLog.
	b add: ds1.
	b axisY noLabel; numberOfTicks: 10.
	b axisX noLabel; noTick.
	b build.
	
	result := (b view elements collect: #position) asArray collect: #asIntegerPoint.
	expected := ((Array new: 25) at: 1 put: ((0@0)); at: 2 put: ((0@ -200)); at: 3 put: ((-2@0)); at: 4 put: ((-2@ -57)); at: 5 put: ((-2@ -91)); at: 6 put: ((-2@ -115)); at: 7 put: ((-2@ -134)); at: 8 put: ((-2@ -149)); at: 9 put: ((-2@ -162)); at: 10 put: ((-2@ -173)); at: 11 put: ((-2@ -183)); at: 12 put: ((-2@ -192)); at: 13 put: ((-2@ -200)); at: 14 put: ((0@0)); at: 15 put: ((300@0)); at: 16 put: ((30@ -57)); at: 17 put: ((60@ -91)); at: 18 put: ((90@ -115)); at: 19 put: ((120@ -134)); at: 20 put: ((150@ -149)); at: 21 put: ((180@ -162)); at: 22 put: ((210@ -173)); at: 23 put: ((240@ -183)); at: 24 put: ((270@ -192)); at: 25 put: ((300@ -200)); yourself).
	self assert: result equals: expected.
