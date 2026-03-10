/// <summary>
/// This codeunit is used to subscribe to events of the Environment Cleanup codeunit in order to execute custom logic during the cleanup process. The event handlers check if the destination environment is a sandbox before executing any logic, ensuring that the cleanup process is only affected in sandbox environments.
/// </summary>
codeunit 50900 "KNH_Cleanup"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Environment Cleanup", 'OnClearDatabaseConfig', '', true, true)]
    local procedure MyProcedure1(DestinationEnv: Enum "Environment Type"; SourceEnv: Enum "Environment Type")
    begin
        if DestinationEnv = DestinationEnv::Sandbox then;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Environment Cleanup", 'OnClearCompanyConfig', '', true, true)]
    local procedure MyProcedure2(CompanyName: Text; DestinationEnv: Enum "Environment Type"; SourceEnv: Enum "Environment Type")
    begin
        if DestinationEnv = DestinationEnv::Sandbox then;
    end;
}
