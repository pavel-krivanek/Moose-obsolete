accessing
isLocallyReentrant
	"If true, the Action can begin a new, concurrent execution, even if there is already another execution of the Action ongoing. If false, the Action cannot begin a new execution until any previous execution has completed."
	^ isLocallyReentrant ifNil: [ isLocallyReentrant := false ]