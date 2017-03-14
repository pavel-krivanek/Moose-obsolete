UI
createElements
	"
	:: Void -> RTDSM
	var shape : RTShape
	var e : RTElement
	var anObject1 : Object
	var index1 : Number
	var anObject2 : Object
	var index2 : Number
	var evt : TREvent
	var elements : Collection
	var objects : Collection
	"
	| e |
	elements := RTGroup new.
	objectsY copy
		doWithIndex:
			[ :anObject1 :index1 | 
			objectsX copy
				doWithIndex:
					[ :anObject2 :index2 | 
					e := self elementOn: (self createObjectBlock value: anObject1 -> anObject2).
					e attributeAt: #matrixIndex put: index2 @ index1.
					elements add: e ] ].