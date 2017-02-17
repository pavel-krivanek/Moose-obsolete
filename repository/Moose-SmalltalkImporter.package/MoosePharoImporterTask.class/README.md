This class specifies that the Smalltalk classes are identified using packages.



Implementation notes.

	Should check packageFrom: because it may be useless and has to be fixed anyway
	packageFrom: and namesString do not have a sender. -> get rid of them