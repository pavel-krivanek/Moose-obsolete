error
nullStateError
	self flag: #todo.	"Use a first class error."
	self error: 'You cannot store elements inside a minimal state'