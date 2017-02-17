instance creation
openTSVfile
	| fileName tab stream |
	fileName := TRPlatform current dialogChooseFile:  #('*.csv') label: 'Pick a CSV file'.
	fileName ifNil: [ ^ nil ].
	stream := fileName asFileReference readStream.

	[ tab := self new.
	tab input: stream contents usingDelimiter: Character tab. ]
	ensure: [ stream close ].
	self assert: [tab values first size = 3] description: 'Wrong CSV structure'.
	tab convertColumnsAsInteger: #(1).
	
	^ tab