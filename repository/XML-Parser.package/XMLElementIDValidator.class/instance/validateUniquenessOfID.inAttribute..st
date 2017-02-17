private
validateUniquenessOfID: anID inAttribute: anAttribute
	| oldSize |

	"checking size after is faster than includes test"
	oldSize := self ids size.
	(self ids
		add: anID;
		size) > oldSize
		ifFalse: [
			self
				errorDuplicateID: anID
				inAttribute: anAttribute].