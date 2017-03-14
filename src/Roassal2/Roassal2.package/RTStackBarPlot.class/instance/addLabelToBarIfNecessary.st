private - utility
addLabelToBarIfNecessary
	labelBlock ifNil: [ ^ self ].
	view elements do: [ :e | 
		(labelConditionalBlock rtValue: e model)
			ifTrue: [ e @ (RTLabeled new center; color: labelColor; text: labelBlock) ] ].