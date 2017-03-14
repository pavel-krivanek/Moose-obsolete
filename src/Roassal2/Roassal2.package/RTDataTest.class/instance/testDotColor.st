tests
testDotColor

	| b ds e |
	b := RTGrapher new.
	ds := RTData new.
	ds interaction popup.
	ds dotShape color: Color blue.
	ds points: #(1 2 3 4).
	ds x: #yourself; y: #yourself.
	b add: ds.

	b build.
	
	e := b view elementFromModel: 1.
	self assert: e trachelShape color equals: Color blue.