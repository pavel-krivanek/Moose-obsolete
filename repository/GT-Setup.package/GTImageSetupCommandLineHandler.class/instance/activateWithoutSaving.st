activation
activateWithoutSaving
	self cleanupWorld.
"	self installGLMWhitespaceTheme."
	self installFonts.
	self installGTDebuggers.
	self flushMCCache.
	self setPreferredSettings