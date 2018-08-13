private - backend access
bindingOf: varName

	^ self owner isRootInEnvironment
		ifFalse: [self owner superclass bindingOf: varName]
		ifTrue: [ nil ]