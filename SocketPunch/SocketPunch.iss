#define MyAppName "SocketPunch"
#define MyAppVersion "1.2.5"
#define MyAppPublisher "Olmectron (Installer: WiiDatabase Team)"
#define MyAppURL "hhttps://github.com/Olmectron/SocketPunch"
#define MyAppExeName "SocketPunch.jar"

[Setup]
AppId={{B91F2C22-2B43-4918-BD5D-F71A217AAFAE}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={userappdata}\{#MyAppName}
DefaultGroupName=3DS-Tools
AllowNoIcons=yes
OutputBaseFilename=SocketPunch-setup
SetupIconFile=icon.ico
Compression=lzma
SolidCompression=yes
AppComments=Mit SocketPunch können CIA-Dateien an den CIA-Installer FBI gesendet werden
UninstallDisplayIcon={uninstallexe}
DisableWelcomePage=True

[Languages]
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[UninstallDelete]
Type: files; Name: "{app}\log.txt"

[Files]
Source: "SocketPunch\SocketPunch.jar"; DestDir: "{app}"; Flags: ignoreversion
Source: "SocketPunch\SocketPunch.ico"; DestDir: "{app}";

[Icons]
Name: {group}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; IconFilename: {app}\SocketPunch.ico;
Name: {commondesktop}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; IconFilename: {app}\SocketPunch.ico; Tasks: desktopicon;

[Code]
// check for Java
function InitializeSetup(): Boolean;
var
 ErrorCode: Integer;
 JavaInstalled : Boolean;
 Result1 : Boolean;
 Versions: TArrayOfString;
 I: Integer;
begin
 if RegGetSubkeyNames(HKLM, 'SOFTWARE\JavaSoft\Java Runtime Environment', Versions) then
 begin
  for I := 0 to GetArrayLength(Versions)-1 do
   if JavaInstalled = true then
   begin
    //do nothing
   end else
   begin
    if ( Versions[I][2]='.' ) and ( ( StrToInt(Versions[I][1]) > 1 ) or ( ( StrToInt(Versions[I][1]) = 1 ) and ( StrToInt(Versions[I][3]) >= 7 ) ) ) then
    begin
     JavaInstalled := true;
    end else
    begin
     JavaInstalled := false;
    end;
   end;
 end else
 begin
  JavaInstalled := false;
 end;


 //JavaInstalled := RegKeyExists(HKLM,'SOFTWARE\JavaSoft\Java Runtime Environment\1.9');
 if JavaInstalled then
 begin
  Result := true;
 end else
    begin
  Result1 := MsgBox('Dieses Tool benötigst mindestens Java 7. Bitte installiere Java und starte die Installation erneut. Browser jetzt öffnen und Java herunterladen?',
   mbConfirmation, MB_YESNO) = idYes;
  if Result1 = false then
  begin
   Result:=false;
  end else
  begin
   Result:=false;
   ShellExec('open',
    'https://www.java.com/getjava/',
    '','',SW_SHOWNORMAL,ewNoWait,ErrorCode);
  end;
    end;
end;

//ask if delete config file
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  if CurUninstallStep = usPostUninstall then
  begin
    if MsgBox('Soll die Konfigurationsdatei gelöscht werden?', mbConfirmation, MB_YESNO or MB_DEFBUTTON2) = IDYES then
    //this is the msg that will display after uninstall,change is as you prefer 
    begin
        DelTree(ExpandConstant('{app}'), True, True, True);
    end;
  end;
end;
end.