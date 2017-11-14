accessing
mutationBehaviour: aGhostBehaviour
	victimBehaviour := GHVictimBehaviour forMutationWith: aGhostBehaviour.
	classDelegator := GHDelegatorBehaviour new.
	self initializeClassProxy 