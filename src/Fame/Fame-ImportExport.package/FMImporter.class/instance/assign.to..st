private
assign: element to: serial 
	| todo |
	serialDict 
		at: serial
		put: element.
	todo := reminderDict 
		removeKey: serial
		ifAbsent: [ ^ self ].
	todo do: 
		[ :each | 
		each resolve: element.
		tally := tally - 1.
		tally should >= 0 ]