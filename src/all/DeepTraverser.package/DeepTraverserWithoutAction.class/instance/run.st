private
run
	self reset.
	[ self hasNext ] 
		whileTrue: [ self next ]