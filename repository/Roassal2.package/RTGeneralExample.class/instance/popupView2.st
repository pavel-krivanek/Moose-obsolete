popup
popupView2
	<gtExample>
	<noTest>
	"
	self new popupView2
	"
	| v els background |
	v := RTView new.
	v @ RTDraggableView.
	els := (RTBox new size: 20) elementsOn: (1 to: 100).
	
	els @ (RTPopup new group: [ :group :el |
		el model timesRepeat: [
			group add: (RTBox new size: 10; color: (Color purple alpha: 0.5)) element ].
		RTGridLayout on: group.		
		background := (RTBox new color: (Color white alpha: 0.5)) element.
	
		RTNest new centerOn: background elements: group.
		group add: background.	
		 ]).
	
	v addAll: els.
	els @ RTDraggable@RTLabeled.
	RTGridLayout on: els.
	^ v