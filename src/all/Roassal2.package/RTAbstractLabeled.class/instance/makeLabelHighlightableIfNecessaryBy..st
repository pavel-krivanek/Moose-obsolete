utility
makeLabelHighlightableIfNecessaryBy: element
	"Do nothing if there is no need to"
	highlightable ifFalse: [ ^ self ].
	
	labelTrachel color: lowColor.
	element when: TRMouseEnter do: [ :evt | labelTrachel color: color. labelTrachel pushFront. evt signalUpdate ].
	element when: TRMouseLeave do: [ :evt | 
		labelTrachel canvas ifNotNil: [ labelTrachel color: lowColor. self pushBackLabelIfNecessary. evt signalUpdate ] ].