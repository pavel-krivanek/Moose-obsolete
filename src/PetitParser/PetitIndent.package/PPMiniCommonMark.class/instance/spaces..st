lists
spaces: length
	| retval |
	retval := ''.
	length timesRepeat: [ 
		retval := retval, ' '.
	].
	^ retval