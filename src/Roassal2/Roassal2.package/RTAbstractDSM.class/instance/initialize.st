initialization
initialize
	"
	:: Void -> RTDSM
	"
	super initialize.
	self objects: #().
	self createObjectBlock: [ :assoc| assoc ].
	self selectElement: [ :e | true ].
	self interaction popup.
	self interaction 
		when: TRMouseEnter do: [ :evt | 
			self highlightElements.
			self unhighlightColumn: (evt element attributeAt: #matrixIndex) x.
			self unhighlightRow: (evt element attributeAt: #matrixIndex) y.
		];when: TRMouseLeave do: [ :evt | 
			self unhighlightElements. ].
	xinteraction := RTInteractionBuilder new.
	yinteraction := RTInteractionBuilder new.
	rotation := self defaultTopLabelRotation.
	wantsLabel := true.
	text := #yourself.
	self labelShapeX: RTShapeBuilder new.
	self labelShapeX label.
	self labelShapeY: RTShapeBuilder new.
	self labelShapeY label.
	transparencyWhenHighlighted := 0.4.
	transparencyWhenNonHighlighted := 1.