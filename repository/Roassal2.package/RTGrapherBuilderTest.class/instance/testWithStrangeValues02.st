tests
testWithStrangeValues02

	| graphBuilder ds |
	graphBuilder := RTGrapher new.
	graphBuilder extent: 300 @ 200.

	ds := RTData new.
	ds dotShape rectangle size: 0.
	ds points: #(1 3 7 0 6).

	ds y: [ :c | c asInteger ].
	ds barShape rectangle 
	   width: 10;
	   color: Color blue.

	graphBuilder add: ds.
	graphBuilder axisX noLabel; noTick.
	graphBuilder axisY noLabel; noTick.
	graphBuilder build.
	
	self assert: (graphBuilder view elements collect: #position) asArray equals:  ((Array new: 9) at: 1 put: ((0@0)); at: 2 put: ((0@ -200)); at: 3 put: ((0@0)); at: 4 put: ((300@0)); at: 5 put: ((60@ -12.5)); at: 6 put: ((120@ -37.5)); at: 7 put: ((180@ -87.5)); at: 8 put: ((240@0.0)); at: 9 put: ((300@ -75.0)); yourself).
	
	"This was true when there was no offset for the bars. "
"	self assert: (graphBuilder view elements collect: #position) asArray equals: ((Array new: 9) at: 1 put: ((0@0)); at: 2 put: ((0@ -200)); at: 3 put: ((0@0)); at: 4 put: ((300@0)); at: 5 put: ((50@ -12.5)); at: 6 put: ((100@ -37.5)); at: 7 put: ((150@ -87.5)); at: 8 put: ((200@0.0)); at: 9 put: ((250@ -75.0)); yourself)"