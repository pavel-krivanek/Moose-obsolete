grammar-literals-string
characterLiteral 
 ^super characterLiteral trim ==> [:token | PJCharacterLiteralNode literalValue: (token inputValue allButFirst allButLast)]