sources
exampleRoassalCode
	<gtExample> 
	<noTest>
	| b |
	(TRPlatform current dialogConfirm: 'This example takes a long time to load, execute?')
	ifFalse: [ ^ self ].
	b := RTNameCloud new.
	RTObject withAllSubclasses do: [ :c | 
		b addStrings: (c rtmethods collect: #getSource) ].
	^ b