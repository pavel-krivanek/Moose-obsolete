grammar-literals-string
stringLiteral 

 ^super stringLiteral trim ==> [:token | PJStringLiteralNode literalValue: (token inputValue allButFirst allButLast)]