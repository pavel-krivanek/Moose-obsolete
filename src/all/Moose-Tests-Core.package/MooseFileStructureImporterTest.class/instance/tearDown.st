setup
tearDown 
	"self new tearDown"
	toDelete do: [:each | self filesystem delete: each ]