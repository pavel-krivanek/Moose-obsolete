accessing
byName: name
	^ self byName: name ifAbsent: [ self errorNotFound: name ]