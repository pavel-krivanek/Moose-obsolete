*DeepTraverser-private
dtTraverseStartUsing: aStream
	self do: [ :each | each dtTraverseStartUsing: aStream ]