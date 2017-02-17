public-exporting
export: aView toStream: aStream

	self assert: [ aStream isStream ].
	self shouldCreateJS ifTrue: [ self createJS. ].
	stream := aStream.
	[
		self addStart: aView.
		self exportSVG: aView.
		self addEnd.
	] ensure: [ stream close. ].