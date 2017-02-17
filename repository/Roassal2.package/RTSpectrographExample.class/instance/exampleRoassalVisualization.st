sources
exampleRoassalVisualization
	<gtExample> 
	<noTest>
	| b |
	(TRPlatform current dialogConfirm: 'This example takes a long time to load, execute?')
	ifFalse: [ ^ self ].
	b := RTSpectrograph new.
	b objects: ((RTObject withAllSubclasses , TRObject withAllSubclasses) reverseSortedAs: #livingInDays).

	b highlight: [ :cls :livingDay | cls inheritsFrom: TRObject ] color: Color lightGreen.
	b highlight: [ :cls :livingDay | cls gotMethodOnDay: livingDay ].
	
	b popupText: [ :cls :age | cls name, '  ', age printString , ' days old' ].
	b lineBlock: [ :cls | 0 to: cls livingInDays ].
	
	b build.
	^ b view