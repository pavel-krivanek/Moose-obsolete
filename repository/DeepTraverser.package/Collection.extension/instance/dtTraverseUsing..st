*DeepTraverser-private
dtTraverseUsing: aStream
	self do: [ :each | each dtTraverseUsing: aStream ]