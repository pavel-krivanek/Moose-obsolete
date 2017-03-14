tests - interaction
testInteractionNoOverride

	"popup and draggable"	
	self assert: b interaction numberOfInteractions equals: 2.

	b interaction when: TRMouseClick do: [ :evt | ].
	self assert: b interaction numberOfInteractions equals: 3