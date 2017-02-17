utilities
cleanupWorld
	(World submorphs select: [ :each | each isSystemWindow ]) do: #delete.
	World color: Color white