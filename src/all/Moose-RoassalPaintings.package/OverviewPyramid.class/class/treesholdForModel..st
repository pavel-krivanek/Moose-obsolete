accessing
treesholdForModel: aMooseModel
	"return the treeshold to use for aMooseModel (it can be Java, smalltalk, cpp treeshold according the source language of the model)"

	^ aMooseModel isSmalltalk
		ifTrue: [ SmalltalkTreesholds ]
		ifFalse: [ JavaTreesholds ]