accessing
privateAllOutgoingAssociationTypes
   ^ (self allChildrenTypes flatCollectAsSet: #outgoingAssociationTypes)
       addAll: self outgoingAssociationTypes;
       yourself