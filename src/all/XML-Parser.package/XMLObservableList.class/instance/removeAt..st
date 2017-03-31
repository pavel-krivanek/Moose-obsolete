removing
removeAt: anIndex
	| removed |

	removed := super removeAt: anIndex.
	self afterRemoving: removed.
	^ removed.