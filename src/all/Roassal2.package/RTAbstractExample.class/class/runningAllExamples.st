examples
runningAllExamples
	<todo: 'deprecated (?) since the new GTExample API / UI-Runner is coming soon ...'>
	"
	self runningAllExamples
	"

	"Useful to find examples that may trigger an error"
	
	| examples result w |
	w := '/tmp/result.txt' asFileReference writeStream.
	self allSubclasses do: [ :cls |
		examples := cls selectors select: [ :k |( k beginsWith: 'example')  and: [ (k endsWith: 'Icon') not ] ].
		examples do: [ :k | 
			w nextPutAll: 'About to run ', cls name, '>>', k, ' ...'.
			result := cls new perform: k.
			[ result class == RTView or: [ result isKindOf: RTBuilder ] ] assert.
			w nextPutAll: 'done!'; cr
		] ]