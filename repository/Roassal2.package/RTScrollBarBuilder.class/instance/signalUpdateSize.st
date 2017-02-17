signalling
signalUpdateSize
	| sizeNow |

	sizeNow := self size.
	(self orientation = #horizontal) ifTrue: [
				self shapes surroundingRectangle width: sizeNow.
				self shapes margeRectangle width: (sizeNow - self barWidth).		
				self shapes bar width: self barWidth.
				].
			
	(self orientation = #vertical) ifTrue: [	
				self shapes surroundingRectangle height: sizeNow.
				self shapes margeRectangle height: (sizeNow - (self barHeight)).
				self shapes bar height: self barHeight.
				].
				
				