/// <summary>
/// PermSet "KNH_CleanUp" (ID 50100).
/// </summary>
permissionset 50100 "KNH_CleanUp"
{
    Assignable = true;
    Caption = 'Clean Up', MaxLength = 30;
    Permissions =
        codeunit "KNH_Cleanup" = X;
}
