accessing
failingConditions

	^ failingConditions ifNil: [failingConditions := OrderedCollection new].