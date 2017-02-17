private
createElements: obj using: ablock depth: depth
	| children e |
	e := self shape elementOn: obj.
	self interaction setUpElement: e.
	self elements add: e.
	children := ablock rtValue: obj.
	e attributes at: #depth put: depth.
	children := children collect: [ :child | | e2 |
		e2 := self createElements: child using: ablock depth: depth + 1.
		e2 attributes at: #parent put: e.
		e2 ].
	e attributes at: #children put: children.
	^ e