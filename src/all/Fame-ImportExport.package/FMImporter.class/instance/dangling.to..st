private
dangling: reference to: serial
	(reminderDict at: serial ifAbsentPut: [ OrderedCollection new ]) add: reference.
	tally := tally + 1.
	^ reference