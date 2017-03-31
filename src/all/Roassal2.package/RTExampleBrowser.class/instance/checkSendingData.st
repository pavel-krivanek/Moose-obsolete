instance creation
checkSendingData
	| result |
	Privacy sendDiagnosticsAndUsageData ifTrue: [ ^ self ].
	result := UIManager default questionWithoutCancel: 'Please, do you want to let us know how you use the Roassal example browser? 

Roassal is free to use, but you can retribute to it by letting us know which examples 
interest you the most. 

By pressing YES, you will send to our server the name of the example you have pressed on later on.  
Note that answering YES will also activate other monitoring mechanism, such as Spotter.

__ All the data is sent anonymously__
	' title: 'Send Us Usage Data'. 
	result ifNil: [ ^ self ].
	result ifTrue: [ Privacy sendDiagnosticsAndUsageData: true ]