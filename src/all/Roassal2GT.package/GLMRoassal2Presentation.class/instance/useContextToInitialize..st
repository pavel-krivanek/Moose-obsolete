context
useContextToInitialize: roassalView
	"Use the context of the view to initilize the view"
	| context |
	context := self getContextFor: roassalView.
	context adjustView: roassalView inPresentation: self