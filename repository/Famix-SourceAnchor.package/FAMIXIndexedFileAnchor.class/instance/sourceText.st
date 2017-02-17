accessing
sourceText
	(self completeText isEmpty or: [self startPos isNil or: [self endPos isNil]]) ifTrue: [^ ''].

	^ self completeText copyFrom: self startPos to: (self endPos > self completeText size ifTrue: [self completeText size] ifFalse: [self endPos])