hooks
initializeElement: aView
	"self assert: [ self presentation notNil ] description: 'The presentation has to be set'."

	aView canvas
		when: TRResizeCanvasEvent
		do: [ :evt | 
			| es |
			es := aView elements asGroup encompassingRectangle. 
			(es width + es height) > 4000
				ifFalse: [ aView canvas focusOnCenterScaled ] ]