public
doExecute: elements
	| virtual |
	
	elements isEmpty ifTrue: [ ^  self ].
	elements size = 1 ifTrue: [ 
		^ self layoutSunburst: elements first ].
	virtual := RTArc element.
	virtual attributes at: builder childrenKey put: elements.
	elements do: [ :e | e attributes at: #parent put: virtual ].
	virtual attributes at: #parent put: nil.
	virtual attributes at: #depth put: 0.
	self layoutSunburst: virtual.
	elements do: [ :e | e attributes at: #parent put: nil ].