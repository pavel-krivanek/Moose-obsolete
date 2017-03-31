moosechef-queries-outgoing
queryOutgoingTypeDeclarations

	"typeDeclaration is a virtual association that relates a structural entity (i.e. a variable) to its type.
	 Aggregates the result of queryOutgoingTypeDeclarations for all classes of the receiver."

	| instanc |

	instanc := self createOutgoingQueryResultWith: Set new.
	self classes do: [:c | instanc addAll: c queryOutgoingTypeDeclarations].

	^ instanc.