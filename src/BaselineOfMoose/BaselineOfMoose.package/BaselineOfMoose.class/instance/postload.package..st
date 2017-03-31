actions
postload: loader package: packageSpec

	(self class environment at: #GTImageSetupCommandLineHandler) new installGTDebuggers.
	(self class environment at: #GTImageSetupCommandLineHandler) new setPreferredSettings.