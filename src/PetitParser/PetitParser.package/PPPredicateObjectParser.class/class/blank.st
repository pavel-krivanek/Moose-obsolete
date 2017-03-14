factory-chars
blank
	^self
		cacheAt: #'blank'
		ifAbsentPut: [ self
			chars: (String with: Character space with: Character tab) message: 'blank expected' ]