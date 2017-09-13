Roassal2 - updating
renderIn: aView
	view := aView.
	view add: self rtElement.
	self rtElement
		addCallback:
			(TRTranslationCallback
				block:
					[ :shape :step | 
					self figures translateBy: step.
					self separators translateBy: step ]).
	self changed