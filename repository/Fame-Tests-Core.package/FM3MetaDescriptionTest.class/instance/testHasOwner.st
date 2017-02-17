running
testHasOwner
	FM3 object hasOwner should beFalse.
	FM3 string hasOwner should beFalse.
	FM3 number hasOwner should beFalse.
	FM3 boolean hasOwner should beFalse.
	tower metaMetamodel classes anyOne hasOwner should beTrue.
	tower metaMetamodel properties anyOne hasOwner should beTrue.
	tower metaMetamodel packages anyOne hasOwner should beFalse