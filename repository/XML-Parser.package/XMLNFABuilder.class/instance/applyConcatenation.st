building
applyConcatenation
	| firstFragment secondFragment |

	secondFragment := self popFragment.
	firstFragment := self popFragment.

	firstFragment connectToFragment: secondFragment.

	self pushFragment: firstFragment.