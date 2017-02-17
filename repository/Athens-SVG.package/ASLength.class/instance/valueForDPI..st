converting
valueForDPI: dpi


	units = 'cm' ifTrue: [
		^ value * (dpi / 2.54) asFloat
		].
	
	units = 'mm' ifTrue: [
		^ value * (dpi / 25.4) asFloat
		].

	units = 'px' ifTrue: [ ^ value ].

	units = 'pt' ifTrue: [ ^ value ].
	
	units isEmpty ifTrue: [ ^ value ].
	
	self halt.