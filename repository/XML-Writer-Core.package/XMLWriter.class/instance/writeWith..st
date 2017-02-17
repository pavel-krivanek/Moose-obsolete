writing
writeWith: aBlock
	"evaluates aBlock with the receiver as an optional argument and
	automatically sends #write after"

	aBlock cull: self.
	self write.