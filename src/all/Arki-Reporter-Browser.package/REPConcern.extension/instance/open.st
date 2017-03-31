*arki-reporter-browser
open
	| spec |
	spec := REPConcernSpecification on: self model.
	spec concern: self.
	spec open