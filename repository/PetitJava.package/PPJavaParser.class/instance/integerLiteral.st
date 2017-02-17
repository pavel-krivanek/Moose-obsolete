grammar-literals-string
integerLiteral 

 ^super integerLiteral trim ==> [ :token | PJIntegerLiteralNode newFrom: token value ]