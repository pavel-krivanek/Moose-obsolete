private
dangling: reference to: serial

	| todo |
	todo := reminderDict at: serial ifAbsentPut: [ OrderedCollection new ].
	todo add: reference.
	tally := tally + 1.
	^reference.