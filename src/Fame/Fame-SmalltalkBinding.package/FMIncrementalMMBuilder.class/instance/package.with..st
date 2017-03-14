DSL
package: name with: aBlock

	self ensureEnv: (self ensurePackage: name) while: aBlock