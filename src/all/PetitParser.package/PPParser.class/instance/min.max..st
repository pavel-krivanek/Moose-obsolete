operators-repeating
min: aMinInteger max: aMaxInteger
	"Answer a new parser that parses the receiver at least aMinInteger and at most aMaxInteger times."
	
	^ self star setMin: aMinInteger; setMax: aMaxInteger