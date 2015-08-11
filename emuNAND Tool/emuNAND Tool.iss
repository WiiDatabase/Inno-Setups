#define MyAppName "emuNAND Tool"
#define MyAppVersion "1.0.3"
#define MyAppPublisher "n1ghty (Installer: WiiDatabase Team)"
#define MyAppURL "http://wiidatabase.de/3ds-downloads/pc-tools/emunand-tool/"
#define MyAppExeName "emuNANDTool.exe"

[Setup]
AppId={{F7D55C61-DC36-43DA-8C9A-82AA8F01EC12}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName=3DS-Tools
AllowNoIcons=yes
OutputBaseFilename=emuNANDTool-setup
SetupIconFile=icon.ico
Compression=lzma
SolidCompression=yes
AppComments=Gateway-3DS-emuNAND sichern und wiederherstellen
UninstallDisplayIcon={uninstallexe}
DisableWelcomePage=True
                 
[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "emuNANDTool.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon