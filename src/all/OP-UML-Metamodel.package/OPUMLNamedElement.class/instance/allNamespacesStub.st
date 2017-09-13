operations - stubs
allNamespacesStub
	"The query allNamespaces() gives the sequence of Namespaces in which the NamedElement is nested, working outwards."
	
	"{OCL} result = (if owner.oclIsKindOf(TemplateParameter) and
  owner.oclAsType(TemplateParameter).signature.template.oclIsKindOf(Namespace) then
    let enclosingNamespace : Namespace =
      owner.oclAsType(TemplateParameter).signature.template.oclAsType(Namespace) in
        enclosingNamespace.allNamespaces()->prepend(enclosingNamespace)
else
  if namespace->isEmpty()
    then OrderedSet{}
  else
    namespace.allNamespaces()->prepend(namespace)
  endif
endif)"
	
	self notYetImplemented
