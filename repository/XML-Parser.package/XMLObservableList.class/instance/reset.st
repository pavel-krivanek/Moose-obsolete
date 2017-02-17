removing
reset
	| removed |

	removed := collection copy.
	collection reset.
	removed do: [:each | self afterRemoving: each].