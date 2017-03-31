callback
callbackWithSelectedElements
	| selectedElements |
	selectedElements := self elementsWithinTheSelection.
	self evaluateCallBackWithElements: selectedElements