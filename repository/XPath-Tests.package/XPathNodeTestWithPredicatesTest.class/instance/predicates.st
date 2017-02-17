accessing
predicates
	"using block predicates here would make 'self predicates ~= self predicates'
	because '[1] ~= [1]'"
	^ Array
		with: 1
		with: 2
		with: 3
		with: 4