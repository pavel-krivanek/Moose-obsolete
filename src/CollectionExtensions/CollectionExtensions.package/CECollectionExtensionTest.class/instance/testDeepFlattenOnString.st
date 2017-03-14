flatten
testDeepFlattenOnString
	"don't flatten strings"

	self assert: #(a b c d e)
		equals: #((a b) ((c d) e)) deepFlatten.
	self assert: #('foo' 'bar' 'zorg')
		equals: #(('foo' ('bar')) 'zorg') deepFlatten