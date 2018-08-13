tests
testMerging

"	| env1 env2 |
	
	env1 := RGEnvironment named: 'env1'.
	env2 := RGEnvironment named: 'env2'.	
	self deny: (env1 canMergeSimplyWith: env2).
	
	env1 := RGEnvironment unnamed.
	env2 := RGEnvironment unnamed.
	self deny: (env1 canMergeSimplyWith: env2).
	
	env1 := RGEnvironment named: 'env1'.
	env2 := RGEnvironment unnamed.
	self deny: (env1 canMergeSimplyWith: env2).

	env1 := RGEnvironment unnamed.
	env2 := RGEnvironment named: 'env2'.
	self deny: (env1 canMergeSimplyWith: env2).		
			
	env1 := RGEnvironment unnamed.
	env1 cleanPackages.
	env2 := RGEnvironment unnamed.
	env2 cleanPackages.
	self deny: (env1 canMergeSimplyWith: env2).


"