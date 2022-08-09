/// <summary>
/// Codeunit "Cleanup" (ID 50100).
/// </summary>
codeunit 50100 Cleanup
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Environment Cleanup", 'OnClearDatabaseConfig', '', true, true)]
    local procedure MyProcedure1(DestinationEnv: Enum "Environment Type"; SourceEnv: Enum "Environment Type")
    begin
        if DestinationEnv = DestinationEnv::Sandbox then begin

        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Environment Cleanup", 'OnClearCompanyConfig', '', true, true)]
    local procedure MyProcedure2(CompanyName: Text; DestinationEnv: Enum "Environment Type"; SourceEnv: Enum "Environment Type")
    begin
        if DestinationEnv = DestinationEnv::Sandbox then begin

        end;
    end;
}
