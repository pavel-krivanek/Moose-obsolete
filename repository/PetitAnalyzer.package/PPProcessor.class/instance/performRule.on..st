private
performRule: aRule on: aParser
	context := Dictionary new.
	^ aRule performOn: aParser