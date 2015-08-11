#define MyAppName "Lunar Expand"
#define MyAppVersion "1.14"
#define MyAppPublisher "FuSoYa (Installer: WiiDatabase Team)"
#define MyAppURL "http://wiidatabase.de/downloads/pc-tools/lunar-magic-pc/"
#define MyAppExeName "Lunar Expand.exe"

[Setup]
AppId={{AA6C6043-F03D-4CD6-84F1-90C1641E78E0}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={userappdata}\Lunar-Tools\{#MyAppName}
DefaultGroupName=Lunar-Tools
AllowNoIcons=yes
OutputBaseFilename=Lunar-Expand-setup
SetupIconFile=icon.ico
Compression=lzma
SolidCompression=yes
AppComments=Tool zum Vergrößern von SNES-Roms
UninstallDisplayIcon={uninstallexe}
DisableWelcomePage=True

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "Lunar-Expand\Lunar Expand.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Lunar-Expand\readme.txt"; DestDir: "{app}"; Flags: ignoreversion isreadme

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent