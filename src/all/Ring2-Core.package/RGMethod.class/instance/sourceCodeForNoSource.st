accessing
sourceCodeForNoSource

	^ self selector asMethodPreamble, String cr, String tab, '"source code for the method model not set"'