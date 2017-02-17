popup
popupView1
	<gtExample>
	<noTest>
	
	"
	self new popupView1
	"
	| v els |
	v := RTView new.
	v @ RTDraggableView.
	els := (RTBox new size: 20) elementsOn: (1 to: 100).
	
	els @ (RTPopup new group: [ :group :el |
		el model timesRepeat: [
			group add: (RTBox new size: 10; color: (Color purple alpha: 0.5)) element ].
		RTGridLayout on: group. ]).
	
	
	
	v addAll: els.
	els @ RTDraggable @ RTLabeled.
	RTGridLayout on: els.
	^ v