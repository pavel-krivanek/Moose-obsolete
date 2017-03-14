instruction decoding
pushNewArrayOfSize: numElements 
	"Push New Array of size numElements bytecode."
	stack addLast: #computed 