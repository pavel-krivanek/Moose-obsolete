tests
testBasic

	| a |
	self assert: b view numberOfElements equals: 23.
	self assert: b view numberOfEdges equals: 2.
	a := ((Array new: 23) at: 1 put: ((19@ -58)); at: 2 put: ((19@ -33)); at: 3 put: ((19@ -8)); at: 4 put: ((0@0)); at: 5 put: ((76@ -116)); at: 6 put: ((76@ -66)); at: 7 put: ((76@ -16)); at: 8 put: ((0@0)); at: 9 put: ((134@ -175)); at: 10 put: ((134@ -108)); at: 11 put: ((134@ -33)); at: 12 put: ((0@0)); at: 13 put: ((191@ -175)); at: 14 put: ((191@ -108)); at: 15 put: ((191@ -33)); at: 16 put: ((0@0)); at: 17 put: ((248@ -175)); at: 18 put: ((248@ -108)); at: 19 put: ((248@ -33)); at: 20 put: ((0@0)); at: 21 put: ((0@ -200)); at: 22 put: ((0@0)); at: 23 put: ((300@0)); yourself).
	self assert: ((b view elements collect: #position) asArray collect: #rounded) equals: a