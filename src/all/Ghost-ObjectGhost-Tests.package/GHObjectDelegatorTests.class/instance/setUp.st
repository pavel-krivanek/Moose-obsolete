running
setUp
	super setUp.

	delegationTarget := 'delegation target'.
		
	ghost ghostBehaviour: (GHDelegatorBehaviour metaLevel: GHMetaLevel standard target: delegationTarget)