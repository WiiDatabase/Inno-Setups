; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "WiiDataDownloader"
#define MyAppVersion "Pre-Alpha"
#define MyAppPublisher "WiiDatabase Team"
#define MyAppURL "http://wdd.wiidatabase.de/"
#define MyAppExeName "Starte WDD.bat"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{5D033351-43B5-47F0-9BF7-899C48A45DC5}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=gpl-3.0.txt
OutputBaseFilename=WDD-setup
SetupIconFile=icon.ico
Compression=lzma
SolidCompression=yes

#include <idp.iss>
                 
[Languages]
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[UninstallDelete]
Type: filesandordirs; Name: "{app}\Support"
Type: files; Name: "{app}\download.bat"
Type: files; Name: "{app}\Starte WDD.bat"
Type: files; Name: "{app}\WDD.bat"
Type: files; Name: "{app}\LICENSE.md"
Type: files; Name: "{app}\README.md"
Type: dirifempty; Name: "{app}"

[Files]
Source: "unzipper.dll"; Flags: dontcopy
Source: "{tmp}\WDD.zip"; DestDir: "{app}"; AfterInstall: ExtractMe('{tmp}\WDD.zip', '{app}'); Flags: external deleteafterinstall;

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\Support\wdd.ico" 
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\Support\wdd.ico"; Tasks: desktopicon

[Code]
// Download
procedure InitializeWizard();
begin
    idpAddFile('http://wdd.wiidatabase.de/files/update/WDD.zip', ExpandConstant('{tmp}\WDD.zip'));

    idpDownloadAfter(wpReady);
end;

// Extrahieren
procedure unzip(src, target: AnsiString);
external 'unzip@files:unzipper.dll stdcall delayload';

procedure ExtractMe(src, target : AnsiString);
begin
  unzip(ExpandConstant(src), ExpandConstant(target));
end;