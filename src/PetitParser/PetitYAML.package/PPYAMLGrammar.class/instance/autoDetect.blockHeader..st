as yet unclassified
autoDetect: context blockHeader: blockHeader
	| retval position |
	position := context position.
	
	retval := nil.
	blockHeader ifTrue: [ 
		(context peek = $- or: [ context peek = $+ ]) ifTrue: [context next].
	].

	[context atEnd not and: [retval = nil]] whileTrue: [ 
		context peek isSeparator 
			ifTrue: [ context next ]
			ifFalse: [ retval := (context stream column - context YAMLN) ].		
	].

	retval ifNil: [  retval := (context stream column - context YAMLN) ].
	
	context position: position.
	
	"
		auto detect always returns m > 0, so if 0 is detected, 
		return something strange :)
	"
	(retval = 0) ifTrue: [ retval := -1 ].
	"Transcript crShow: 'autodetected: ', retval asString."
	^ retval