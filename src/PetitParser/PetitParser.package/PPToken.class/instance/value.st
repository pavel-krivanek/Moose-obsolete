accessing-values
value
	self notify: 'Token>>#value is no longer supported. Instead use Token>>#inputValue'.
	^ self inputValue