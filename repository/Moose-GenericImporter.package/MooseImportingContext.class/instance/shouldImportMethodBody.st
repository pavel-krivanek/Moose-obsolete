importing queries
shouldImportMethodBody
	
	^self shouldImportAccess
		or:
			[self shouldImportImplicitVariable
				or:
					[self shouldImportLocalVariable
						or: [self shouldImportInvocation or: [self shouldImportArgument]]]]