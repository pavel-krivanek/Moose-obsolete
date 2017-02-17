private
functions
	"the default function set won't be directly modified because the add/remove
	methods use copy-on-write semantics"
	^ functions ifNil: [functions := self class defaultFunctions]