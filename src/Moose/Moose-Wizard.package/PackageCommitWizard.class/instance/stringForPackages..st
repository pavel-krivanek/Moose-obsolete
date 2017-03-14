private
stringForPackages: workingCopies

	| assoc |
	^ String streamContents: [:str |
		workingCopies do: [:workingCopy |
			str
				nextPutAll: workingCopy packageName;
				nextPutAll: ' -> ';
				nextPutAll: (self repositoryFor: workingCopy) description;
				cr ]
		]
