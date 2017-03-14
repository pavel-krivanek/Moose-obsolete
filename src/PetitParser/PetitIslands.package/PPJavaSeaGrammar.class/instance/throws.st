method
throws
	self halt: 'deprecated'.
	^ 'throws' asParser trim, type trim, ($, asParser, type trim) star