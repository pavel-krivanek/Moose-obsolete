tests
testCompatibility

	| env1 env2 |
	
	"TODO: needs rewriting"
	
"	env1 := RGEnvironment named: 'env1'.
	env2 := RGEnvironment named: 'env2'.	
	self deny: (env1 compatibleWith: env2).

	env1 := RGEnvironment named: 'env'.
	env2 := RGEnvironment named: 'env'.	
	self assert: (env1 compatibleWith: env2).

	env1 := RGEnvironment unnamed.
	env2 := RGEnvironment unnamed.
	self assert: (env1 compatibleWith: env2).
	
	env1 := RGEnvironment named: 'env1'.
	env2 := RGEnvironment unnamed.
	self deny: (env1 compatibleWith: env2).

	env1 := RGEnvironment unnamed.
	env2 := RGEnvironment named: 'env2'.
	self deny: (env1 compatibleWith: env2).		
			
	env1 := RGEnvironment unnamed.
	env1 cleanBehaviors.
	env2 := RGEnvironment unnamed.
	env2 cleanBehaviors.
	self assert: (env1 compatibleWith: env2).

"
