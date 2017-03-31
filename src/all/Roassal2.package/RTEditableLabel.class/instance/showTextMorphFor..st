rendering
showTextMorphFor: anElement
	"Return the created morph"
	| shape rect  trachelShape str posBlock clazz |
	self assert: [ anElement view notNil ] description: 'The argument should be within a view'.
	shape := anElement shape.
	rect := anElement encompassingRectangle.
	anElement trachelShape class = TRCompositeShape ifTrue: [ 
		trachelShape := (anElement trachelShape shapesInstancesOf: TRLabelShape) first.
		clazz := RubEditingArea ]
	ifFalse: [ 
		trachelShape := anElement trachelShape.
		clazz := RubTextFieldArea ].
	
	str :=  shape textFor: anElement.
	fieldArea := clazz new 
		takeKeyboardFocus;
		updateTextWith: str;
		font: trachelShape font;
		onAnnouncement: MorphLostFocus do: [ :ann | ann morph delete ];	
		openInWorld.
	fieldArea editor selectAt: str size+1.
	
	posBlock := [| pos |
		pos := anElement trachelShape isFixed ifTrue: 
			[ anElement position ] ifFalse: 
			[ anElement view canvas camera fromSpaceToPixel: anElement position ].
		anElement view canvas morph ifNotNil: 
			[ fieldArea position: anElement view canvas morph bounds origin+ pos - (fieldArea extent /2) ] ].

	posBlock value.
	editLabelShape ifFalse: [ 
		fieldArea updateTextWith: ''. ].
	
	events do: [ :evt | fieldArea announcer subscribe: evt key send: #value to: 
		[ evt value value: fieldArea text asString ] ] .
	updateMorphExtent ifTrue: [ 
		fieldArea announcer subscribe: RubTextChanged send: #value to: [ posBlock value ] ].
	^ fieldArea
	