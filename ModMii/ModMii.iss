#include <idp.iss>

#define MyAppName "ModMii"
#define MyAppVersion "6.3.8"
#define MyAppPublisher "XFlak (Installer: WiiDatabase Team)"
#define MyAppURL "https://wiidatabase.de/downloads/pc-tools/modmii/"
#define MyAppExeName "ModMii.exe"

[Setup]
AppId={{FC5332DA-09F7-4CC2-A247-EDB09A333BF7}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={userappdata}\{#MyAppName}
DefaultGroupName=Wii-Tools
AllowNoIcons=yes
LicenseFile=gpl-3.0.txt
OutputBaseFilename=ModMii-setup
SetupIconFile=icon.ico
Compression=lzma
AppComments=Halbautomatischer Wii-Softmod
UninstallDisplayIcon={uninstallexe}
DisableWelcomePage=True
SolidCompression=yes
                 
[Languages]
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[UninstallDelete]
Type: filesandordirs; Name: "{app}\Support"
Type: filesandordirs; Name: "{app}\temp"
Type: files; Name: "{app}\ModMii.exe"
Type: files; Name: "{app}\ModMiiSkin.exe"
Type: dirifempty; Name: "{app}"

[Files]
Source: "unzipper.dll"; Flags: dontcopy
Source: "{tmp}\ModMii.zip"; DestDir: "{app}"; AfterInstall: ExtractMe('{tmp}\ModMii.zip', '{app}'); Flags: external deleteafterinstall;

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}";
Name: "{group}\ModMii Skin"; Filename: "{app}\ModMiiSkin.exe";
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{commondesktop}\ModMii Skin"; Filename: "{app}\ModMiiSkin.exe"; Tasks: desktopicon

[Code]
// Download
procedure InitializeWizard();
begin
    idpAddFile('http://ufpr.dl.sourceforge.net/project/modmii/ModMii6.3.8.zip', ExpandConstant('{tmp}\ModMii.zip'));

    idpDownloadAfter(wpReady);
end;

// Extrahieren
procedure unzip(src, target: AnsiString);
external 'unzip@files:unzipper.dll stdcall delayload';

procedure ExtractMe(src, target: string);
begin
  unzip(ExpandConstant(src), ExpandConstant(target));
end;

//ask if delete config file
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  if CurUninstallStep = usPostUninstall then
  begin
    if MsgBox('Sollen heruntergeladene Dateien, Download-Listen und Konfigurationsdateien gelöscht werden?', mbConfirmation, MB_YESNO or MB_DEFBUTTON2) = IDYES then
    //this is the msg that will display after uninstall,change is as you prefer 
    begin
        DelTree(ExpandConstant('{app}'), True, True, True);
    end;
  end;
end;
end.

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent