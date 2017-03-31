examples
shouldFailWhenPopEmpty
	| stack |
	stack := self given: #shouldBeEmpty.
	[ stack pop ] should fail.
	[ stack pop ] on: Error do: [:e |
		e messageText should matchRegex: '.* is empty'].