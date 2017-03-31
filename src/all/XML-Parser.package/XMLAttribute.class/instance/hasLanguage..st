testing
hasLanguage: aLanguage
	| language xmlLang |

	language := aLanguage asLowercase.
	^ (xmlLang := self value asLowercase) = language
		or: [(xmlLang copyUpTo: $-) = language].