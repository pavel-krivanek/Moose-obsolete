interactions
openChildren: arr parent: p
	| temp |
	temp := OrderedCollection new.
	arr do: [ :e |
		(self isElementOpened: e)
			ifFalse: [ 
				e attributes at: #open put: true.
				afterOpen ifNotNil: [ afterOpen rtValue: e ] ].
		temp add: e.
		temp add: (e attributes at: #label).
		temp add: (self lineShape edgeFrom: p to: e).
		temp addAll: (self openChildren: (e attributes at: self childrenKey) parent: e)
		 ].
	^ temp
	