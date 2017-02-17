private
condition: aBlock message: aString
	^ [ :stream | (aBlock value: stream) ifFalse: [ PPFailure message: aString context: stream  ] ] asParser