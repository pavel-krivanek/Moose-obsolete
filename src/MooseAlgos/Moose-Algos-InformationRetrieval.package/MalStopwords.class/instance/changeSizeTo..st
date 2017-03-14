as yet unclassified
changeSizeTo: size
	"Become larger. Typically, a subclass has to override this if the subclass
	adds instance variables."
	| newArray |
	newArray := Array new: size.
	newArray replaceFrom: 1 to: array size with: array startingAt: 1.
	array := newArray