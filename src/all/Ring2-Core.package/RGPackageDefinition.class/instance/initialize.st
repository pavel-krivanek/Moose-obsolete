initialization
initialize

	super initialize.

	extensionMethods := self unresolvedValue: self defaultExtensionMethods.
	definedBehaviors := self unresolvedValue: self defaultDefinedBehaviors.
	tagsForClasses := self unresolvedValue: self defaultTagsForClasses.
