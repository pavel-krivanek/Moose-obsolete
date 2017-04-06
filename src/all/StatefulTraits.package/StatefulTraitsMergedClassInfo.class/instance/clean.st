cleaning
clean

	self cleanMergedClass.

	slots := IdentitySet new.
	traits := IdentitySet new.
	instanceSideSelectors := IdentitySet new.
	classSideSelectors := IdentitySet new.