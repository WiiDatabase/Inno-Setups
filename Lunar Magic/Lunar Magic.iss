#define MyAppName "Lunar Magic"
#define MyAppVersion "2.43"
#define MyAppPublisher "FuSoYa (Installer: WiiDatabase Team)"
#define MyAppURL "https://wiidatabase.de/downloads/pc-tools/lunar-magic-pc/"
#define MyAppExeName "Lunar Magic.exe"

[Setup]
AppId={{21D09EC2-285F-4559-8631-473F4A4F3141}
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
OutputBaseFilename=Lunar-Magic-setup
SetupIconFile=icon.ico
Compression=lzma2/ultra64
SolidCompression=yes
AppComments=Level-Editor für Super Mario World
UninstallDisplayIcon={uninstallexe}
DisableWelcomePage=True

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "Lunar-Magic\Lunar Magic.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Lunar-Magic\Lunar Magic.chm"; DestDir: "{app}"; Flags: ignoreversion
Source: "Lunar-Magic\readme.txt"; DestDir: "{app}"; Flags: ignoreversion isreadme

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent