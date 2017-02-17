adding
addAnimations
	"add animations on the bar, to make the scroll bar movable or not etc.. Callbacks on resize, drag and drop... A lot of precise case to reduce costly full update at maximum"
	| bar surroundingRectangle margeRectangle |

	bar := self shapes bar.
	surroundingRectangle := self shapes surroundingRectangle.
	margeRectangle := self shapes margeRectangle.

	"bar and view drag animations"
	(self orientation = #horizontal) ifTrue: [ 
		self barDragHorizontal.
		self viewDragHorizontal.
		].

	(self orientation = #vertical) ifTrue: [ 
		self barDragVertical.
		self viewDragVertical.
		].
	
	"Move the scroll bar when movable animation"
	(self movable = #isMovable) ifTrue: [
		surroundingRectangle when: TRMouseDragging do: [ :evt |
			self shapes collection do: [ :s | s translateBy: (evt step) ].
			self view signalUpdate.
			]
		].
	
	"Callbacks when translate, resize or rescale canvas"
	self view elements do: [:e | e addCallback: (TRTranslationCallback new block: [
			self encompassingRectangleUpdate. self encompassingRectangleFromSpaceToPixelUpdate. self signalUpdate.])
		].
	
	self view when: TRResizeCanvasEvent do: [ :evt | self signalUpdate].
	
	self view canvas camera addCallback: (TRCameraScaleCallback new block: [ self encompassingRectangleFromSpaceToPixelUpdate. self signalUpdate. ]).



	