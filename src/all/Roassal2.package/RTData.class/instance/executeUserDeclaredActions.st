utility
executeUserDeclaredActions
	"Execute the actions on all the elements (i.e., dots)"
	elementActions do: [ :act | act rtValue: elements ]