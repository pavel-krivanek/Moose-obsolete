converting
asPositionDrawing
	| stream source last |
	stream := WriteStream on: String new.
	source := self contents readStream.
	last := 0.
	[ source atEnd ] whileFalse: [
		[ source atEnd not and: [ source peek isSeparator ] ]
			whileTrue: [ source next ].
		stream nextPutAll: '\fill [source] ('; print: source position / 100.0; nextPutAll: ', 0) rectangle ('.
		[ source atEnd not and: [ source peek isSeparator not ] ]
			whileTrue: [ source next ].
		stream print: source position / 100.0; nextPutAll: ', '; print: self positions size / 100.0; nextPutAll: ');'; cr ].
	stream nextPutAll: '\draw [parser] (0, 0)'.
	1 to: self positions size do: [ :index |
		last <= (self positions at: index)
			ifTrue: [ stream nextPutAll: ' --' ].
		last := self positions at: index.
		stream nextPutAll: ' ('; print: last / 100.0; nextPutAll: ', '; print: index / 100.0; nextPut: $) ].
	stream nextPut: $;.
	^ stream contents