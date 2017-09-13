accessing
namespace: aNamespace
	"Specifies the Namespace that owns the NamedElement."
	namespace := OPUMLToOneLink
		on: self identity
		update: #ownedMembers
		from: namespace
		to: aNamespace