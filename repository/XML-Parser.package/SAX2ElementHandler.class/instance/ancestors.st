accessing
ancestors	
	"Returns a list of all ancestor element handlers of the receiver."

	| ancestors |

	ancestors := XMLOrderedList new.
	self ancestorsDo: [:each | ancestors addLast: each].
	^ ancestors.