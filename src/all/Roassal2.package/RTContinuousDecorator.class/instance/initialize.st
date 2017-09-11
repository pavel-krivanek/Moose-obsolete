initialization
initialize
	super initialize.
	self basic.
	legendLabel := RTShapeBuilder new.
	legendLabel label text: [:as | | pos |
		pos := self calculatePointFor: as key and: as value.
		pos y asString].
	icons := Dictionary new.
	"you can change the way to get a position of the element"
	self pointFor: [ :ds :x | | elsx elsy i e1 e2 res |
		elsx := ds getValuesX. 
		elsy := ds getValuesY.
		i := elsx indexOf: x.
		
		i isZero ifTrue: [ 
			res := elsx first @ elsy first.
			1 to: elsx size -1 do: [ :k | 
				e1 := elsx at: k.
				e2 := elsx at: k +1.
				(x between: e1 and: e2) ifTrue: [ 
					res := x < ((e1 + e2) / 2)
						ifTrue: [ e1 @ (elsy at: k) ]
						ifFalse: [ e2 @ (elsy at: k + 1) ] 
					 ]
				].
			res
			]
			ifFalse: [ (elsx at: i) @ (elsy at: i) ] ].
	


