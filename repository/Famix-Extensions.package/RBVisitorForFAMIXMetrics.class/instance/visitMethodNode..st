enumerating
visitMethodNode: aMethodNode
	
	" I do not know where this block came from"
	"methodComplexity := methodComplexity + (0.3 * block arguments size)."

	self methodBodyOn: aMethodNode source readStream.
	^ super visitMethodNode: aMethodNode