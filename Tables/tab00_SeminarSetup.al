table 50100 "CSD Seminar Setup"
{
    Caption = 'Seminar Setup';

    fields
    {
        field(10; "Primary Key"; Code[10])
        {
            caption = 'Primary Key';
            DataClassification = AccountData;
        }
        field(20; "Seminar Nos."; Code[20])
        {
            caption = 'Seminar Nos.';
            DataClassification = AccountData;
            TableRelation = "No. Series";
        }
        field(30; "Seminar Registration Nos."; Code[20])
        {
            Caption = 'Seminar Registration Nos.';
            DataClassification = AccountData;
            TableRelation = "No. Series";
        }
        field(40; "Posted Seminar Reg. Nos."; Code[20])
        {
            Caption = 'Posted Seminar Reg. Nos.';
            DataClassification = AccountData;
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}