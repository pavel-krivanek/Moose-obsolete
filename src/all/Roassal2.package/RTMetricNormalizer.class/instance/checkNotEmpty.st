utility
checkNotEmpty
	"Raise an error if no elements have been added"
	elements ifNil: [ self error: 'Need to provide a list of elements' ].
	elements ifEmpty: [ self error: 'Please specify what are the elements I should operate on using #elements:' ]