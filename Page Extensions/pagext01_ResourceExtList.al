pageextension 50101 "CSD ResourceListExt" extends "Resource List"
// CSD1.00 - 2018-01-01 - D. E. Veloper
{
    layout
    {
        modify(Type)
        {
            Visible = Showtype;
        }
        addafter(Type)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {
                ApplicationArea = All;
            }
            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {
                Visible = ShowMaxField;
                ApplicationArea = All;
            }
        }
    }

    trigger OnOpenPage()
    begin
        ShowType := (GetFilter(Type) = '');
        ShowMaxField := (GetFilter(Type) = format(Type::machine));
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;

        [InDataSet]
        Showtype: Boolean;
}