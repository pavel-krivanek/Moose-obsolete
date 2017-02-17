moosechef-scoping-filtering
methodScope
	"This only makes sense to reject self loops in #collectAtScope:"

	^ self classes collectAsSet: [:c | c methods]