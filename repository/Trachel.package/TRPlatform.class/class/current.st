default
current
	current isClass ifTrue: [ current := nil ].
	^ current ifNil: [ 
		current := self subclasses detect: [ :any | any isActivePlatform ].
		current := current new. ].