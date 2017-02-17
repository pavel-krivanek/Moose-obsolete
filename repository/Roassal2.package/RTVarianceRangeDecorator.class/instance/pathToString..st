drawing
pathToString: path
	^ String
		streamContents: [ :s | 
			path
				do: [ :each | 
					s nextPutAll: each key.
					each value
						ifNotNil: [ s nextPutAll: ''.
							s
								nextPutAll: each value x asString , ' ' , each value y asString ] ] ]