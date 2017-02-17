accessing
setOptions: aCollectionOfOptions to: trueOrFalse

	aCollectionOfOptions do: [:anOption |
		self setOption: anOption to: trueOrFalse   
		]