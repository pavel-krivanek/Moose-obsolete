running
queue: var
	"Add one or many classes to be processed. Nothing is done before the run method is called"

	var isBehavior  
		ifTrue: [
			queue add: var.
			^self ].
	var isCollection
		ifTrue: [
			var do: [ :each | self queue: each ].
			^self ].
	
	[ false ] assert.