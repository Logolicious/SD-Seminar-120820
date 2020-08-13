page 50140 "CSD Seminar Manager Activities"
// CSD1.00 - 2018-01-01 - D. E. Veloper 
// Chapter 10 - Lab 1 - 2
// - Created new page
{
    Caption = 'Seminar Manager Activities';
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CSD Seminar Cue";
    Editable = false;

    layout
    {
        area(Content)
        {
            cuegroup(Registrations)
            {
                field(Planned; Planned)
                {

                }
                field(Registered; Registered)
                {

                }
                actions
                {

                    action(New)
                    {
                        ApplicationArea = All;

                        trigger OnAction()
                        begin

                        end;
                    }

                }

            }
            cuegroup("For Posting")
            {
                field(Closed; Closed)
                {

                }
            }
        }
    }

    trigger OnOpenPage();
    begin
        if not get then begin
            init;
            insert;
        end;
    end;


}