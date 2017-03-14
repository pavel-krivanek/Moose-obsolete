enumerating
visitMessageNode: aMessageNode 
	
	| rcvr sel args |
	rcvr := aMessageNode receiver.
	sel := aMessageNode selector.
	args := aMessageNode arguments.
	super visitMessageNode: aMessageNode.
	numberOfMessageSends := numberOfMessageSends + 1.
	self countConditionals: sel.
	self computeCyclomaticNumber: sel.	"sel = #printOn: 
		ifTrue: [self halt]."	"duplicated in VisualWorksAnnotator because we ay want to run them separately"
	(self isSuperInMethod: sel withReceiver: rcvr)
		ifTrue: [self methodEntity propertyNamed: #cleanSuperSend put: true].
	(self isDirtySuperInMethod: sel withReceiver: rcvr)
		ifTrue: [self methodEntity propertyNamed: #dirtySuperSend put: true].
	methodComplexity := sel isInfix
		ifTrue: [methodComplexity + 2]
		ifFalse:
			[sel numArgs > 1
				ifTrue: [methodComplexity + 3]
				ifFalse: [methodComplexity + 1]]	"(self isAPICall: sel) ifTrue: [
			methodComplexity + 5] ifFalse: [
		(self isPrimitiveCall: sel) ifTrue: [
			methodComplexity + 7] ifFalse: ["