adding
addEventHandlers: aStream id: aString element: aRTElement center: aNumber
	| visitor myGroup |
	myGroup := self group.
	aStream nextPutAll: '<g visibility="hidden" id="';
		nextPutAll: aString;
		nextPutAll: '">';
		nextPutAll: String cr.
	visitor := RTSVGVisitor new stream: aStream; center: aNumber; yourself.
	visitor canvas: myGroup encompassingRectangle.
	visitor visitGroup: myGroup.
	aStream 
		nextPutAll:  '</g>'