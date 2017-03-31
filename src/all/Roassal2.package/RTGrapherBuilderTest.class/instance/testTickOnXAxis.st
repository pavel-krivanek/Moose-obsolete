tests
testTickOnXAxis

	| ds1 result expected |
	b := RTGrapher new.
	ds1 := RTData new.
	ds1 points: (1 to: 10).
	b add: ds1.
	b axisY noLabel; noTick.
	b axisX noLabel.
	b build.
	
	result := (b view elements collect: #position) asArray collect: #asIntegerPoint.
	expected := ((Array new: 19) at: 1 put: ((0@0)); at: 2 put: ((0@ -200)); at: 3 put: ((0@0)); at: 4 put: ((300@0)); at: 5 put: ((0@2)); at: 6 put: ((75@2)); at: 7 put: ((150@2)); at: 8 put: ((225@2)); at: 9 put: ((300@2)); at: 10 put: ((30@ -20)); at: 11 put: ((60@ -40)); at: 12 put: ((90@ -60)); at: 13 put: ((120@ -80)); at: 14 put: ((150@ -100)); at: 15 put: ((180@ -120)); at: 16 put: ((210@ -140)); at: 17 put: ((240@ -160)); at: 18 put: ((270@ -180)); at: 19 put: ((300@ -200)); yourself).
	self assert: result equals: expected.
