#define MyAppName "Lunar Address"
#define MyAppVersion "1.04"
#define MyAppPublisher "FuSoYa (Installer: WiiDatabase Team)"
#define MyAppURL "http://wiidatabase.de/downloads/pc-tools/lunar-magic-pc/"
#define MyAppExeName "Lunar Address.exe"

[Setup]
AppId={{BDE1B92A-13DE-49EC-8EF0-A4127C5D0873}
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
OutputBaseFilename=Lunar-Address-setup
SetupIconFile=icon.ico
Compression=lzma
SolidCompression=yes
AppComments=SNES-Adress Konversations-Tool
UninstallDisplayIcon={uninstallexe}
DisableWelcomePage=True

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "Lunar-Address\Lunar Address.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Lunar-Address\readme.txt"; DestDir: "{app}"; Flags: ignoreversion isreadme

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent