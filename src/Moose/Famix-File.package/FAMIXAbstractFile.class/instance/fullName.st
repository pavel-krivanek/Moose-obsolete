accessing
fullName 

	^ String streamContents: [:str|
		str nextPutAll: self mooseModel rootFolder.
		self mooseNameOn: str ]