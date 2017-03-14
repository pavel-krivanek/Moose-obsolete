properties
numberOfEmptyLinesOfText
	<MSEProperty: #numberOfEmptyLinesOfText type: #Number>
	<MSEComment: 'Number of empty lines of text'>
	<derived>
	^ self
		lookUpPropertyNamed: #numberOfEmptyLinesOfText
		computedAs: [ 
			| text elot |
			elot := 0.
			self
				ifFileExistsDo: [ 
					text := self sourceText.
					1 to: text size - 1 do: [ :index | 
						((text at: index) = Character cr and: [ (text at: index + 1) = Character cr ])
							ifTrue: [ elot := elot + 1 ] ].
					1 to: text size - 1 do: [ :index | 
						((text at: index) = Character space and: [ (text at: index + 1) = Character cr ])
							ifTrue: [ elot := elot + 1 ] ].
					(text isEmpty not and: [ text last = Character cr ])
						ifTrue: [ elot := elot + 1 ] ].
			elot ]