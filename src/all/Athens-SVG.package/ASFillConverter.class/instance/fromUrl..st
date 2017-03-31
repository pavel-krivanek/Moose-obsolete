parsing
fromUrl: aString
	^ ASLink new url: ( (aString copyAfter: $( ) copyUpTo: $) )