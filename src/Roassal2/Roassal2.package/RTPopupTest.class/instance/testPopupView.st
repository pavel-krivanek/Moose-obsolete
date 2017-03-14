tests
testPopupView
	| b |
	b := RTMondrian new.
	b interaction
		popupView: [ :group :el | 
			group addAll: (RTBox elementsOn: (1 to: 5)).
			RTGridLayout on: group ].
	b node: 42.
	b build.
	
	"No garbage collector happens"
	self assert: b view numberOfElements equals: 1.
	b view elements anyOne announce: TRMouseEnter.
	self assert: b view numberOfElements equals: 7.
	b view elements anyOne announce: TRMouseLeave.
	self assert: b view numberOfElements equals: 1.
	
	"We use the garbage collector"
	b view elements anyOne announce: TRMouseEnter.
	Smalltalk garbageCollect.
	RTPopup removeLastPopup.
	self assert: b view numberOfElements equals: 1.