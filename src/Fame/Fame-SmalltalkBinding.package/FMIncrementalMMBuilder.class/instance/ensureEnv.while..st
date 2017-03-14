private
ensureEnv: env while: aBlock

	envStack push: env.
	aBlock valueWithPossibleArgument: self.
	envStack pop