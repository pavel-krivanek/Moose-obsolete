removing
reset
	| removed |

	removed := collection copy.
	collection reset.
	removed reverseDo: [:each |
		self afterRemoving: each].