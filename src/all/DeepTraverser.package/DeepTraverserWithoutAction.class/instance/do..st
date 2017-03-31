enumerating
do: aBlock
	self reset.
	[ self hasNext ] 
		whileTrue: [ aBlock value: self next ]