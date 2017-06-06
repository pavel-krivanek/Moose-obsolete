accessing
sourceText
	^ self completeText ifEmpty: [ '' ] ifNotEmpty: [ :fullText | fullText copyFrom: (self startPos ifNil: [ 1 ]) to: (self endPos ifNil: [ fullText size ]) ]