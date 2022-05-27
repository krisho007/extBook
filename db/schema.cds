using { managed, cuid } from '@sap/cds/common';

namespace my.dataModel;

entity Escalations: managed, cuid {
    Description     : String (80);
    Material: String(30);
    ExpectedDate: Date;
    Comments: Composition of many Comments on Comments.escalation = $self;
};

entity Comments: managed, cuid{
    comment: String;
    escalation: Association to Escalations;
}