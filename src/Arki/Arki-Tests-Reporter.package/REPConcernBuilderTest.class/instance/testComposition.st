as yet unclassified
testComposition
	| spec |

	spec := REPConcernSpecification on: 42.

	spec composite: 'One' with: [
		spec concern: (REPConcern new)].
	spec composite: 'Two' with: [
		spec concern: (REPConcern new).
		spec concern: (REPConcern new)].

	self assert: spec root children size = 2.
	self assert: spec root children first children size = 1.
	self assert: spec root children last children size = 2.
	self assert: spec root children first label = 'One'
