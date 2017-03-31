private
changed: anAnnouncement
	| examples |
	examples := Smalltalk gtExamplesContained select: [ :example | example hasProblems ].
	examples size > 4 ifTrue: [ ^ self notifyExamples: examples ].
	examples do: [ :example | self notifyExample: example ]