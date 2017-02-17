*Famix-Java
mooseNameWithDots
	^ self mooseName ifNotNil: [ '.' join: (self mooseName substrings: '::') ]