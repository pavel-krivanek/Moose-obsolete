I am the super class of all the roassal examples.

Try to use this script to know the excecution of roassal examples 

| examples errors |
examples := OrderedCollection new.
errors := OrderedCollection new.
(RTAbstractExample subclasses collect: #new) 
	do: [ :example | 
		example gtExamples do: [:met | | time builder |
			time := DateAndTime now.
			[builder := example perform: met selector.
			(builder isKindOf: RTBuilder) 
				ifTrue: [ builder build ].
			time := DateAndTime now - time.
			time > (1 asDuration)
				ifTrue: [ examples add: met->time ]
			] on: Error do: [ errors add: met ] ] ]
	displayingProgress: 'Running examples'.
examples->errors