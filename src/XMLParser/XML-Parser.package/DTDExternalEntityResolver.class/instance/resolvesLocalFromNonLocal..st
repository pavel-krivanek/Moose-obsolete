configuring
resolvesLocalFromNonLocal: aBoolean
	"allow non-local (http) entities to reference local (file) entities?
	(default disabled)"

	self externalEntityLimits resolvesLocalFromNonLocal: aBoolean