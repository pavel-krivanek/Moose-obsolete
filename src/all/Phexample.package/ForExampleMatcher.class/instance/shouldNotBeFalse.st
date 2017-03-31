examples-expecting-boolean
shouldNotBeFalse
  |set|
	set := Set new. 
	set isEmpty should not be: false.
	^set