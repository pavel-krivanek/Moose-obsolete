accessing
privateAllIncomingAssociationTypes
   ^ (self allChildrenTypes flatCollectAsSet: #incomingAssociationTypes)
       addAll: self incomingAssociationTypes;
       yourself