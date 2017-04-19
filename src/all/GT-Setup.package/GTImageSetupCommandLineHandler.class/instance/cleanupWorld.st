utilities
cleanupWorld
	(World submorphs select: [ :each | each isSystemWindow ]) do: #delete.