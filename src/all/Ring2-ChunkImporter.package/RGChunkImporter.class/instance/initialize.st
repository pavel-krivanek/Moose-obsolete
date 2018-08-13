initialize
initialize
	super initialize.
	environment := RGEnvironment new.
	package := RGPackage named: 'ChangeSet'.
	doIts := Set new.