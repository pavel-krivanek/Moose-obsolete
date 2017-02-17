interactions
addExternalInteractions: id element: el
	| aNumber |
	aNumber := self alignPoint: el center.
	(interactions at: el ifAbsent: [OrderedCollection new]) 
		do: [ :i | i external
			ifTrue: [ 
				self stream
					nextPutAll: ' onmousemove="showPopup(evt, ''';
					nextPutAll: id;
					nextPutAll: ''')" onmouseout="hidePopup(''';
					nextPutAll: id;
					nextPutAll: ''')"'.
		
				self afterStream add: [:e | 
					i addEventHandlers: stream id: id  element: el center: aNumber] ]]