Class {
	#name : #SmaCCStepToCursorAction,
	#superclass : #SmaCCScannerStepToAction,
	#category : 'SmaCC_Debugging_Support'
}

{ #category : #registration }
SmaCCStepToCursorAction class >> gtActionFor: aDebugger [
	<gtSmaCCDebuggingInputAction>
	^ (self forDebugger: aDebugger) icon: GLMUIThemeExtraIcons glamorousInto
]

{ #category : #accessing }
SmaCCStepToCursorAction >> defaultLabel [
	^ 'Step to Cursor'
]

{ #category : #accessing }
SmaCCStepToCursorAction >> stepToIndex [
	^ self debugger currentInputSelectionInterval last
]
