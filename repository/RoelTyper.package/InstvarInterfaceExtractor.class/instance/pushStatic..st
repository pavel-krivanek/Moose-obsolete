opcodes-data movement
pushStatic: assoc
	"assoc can be an association OR a variable binding. I just push the complete association, since it does not interest me for the moment."

	stack addLast: assoc