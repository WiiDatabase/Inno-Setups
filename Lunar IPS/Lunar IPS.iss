#define MyAppName "Lunar IPS"
#define MyAppVersion "1.02"
#define MyAppPublisher "FuSoYa (Installer: WiiDatabase Team)"
#define MyAppURL "https://wiidatabase.de/downloads/pc-tools/lunar-magic-pc/"
#define MyAppExeName "Lunar IPS.exe"

[Setup]
AppId={{4E89D5A5-7D2B-46BA-A5A6-D7E573E167E1}
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
OutputBaseFilename=Lunar-IPS-setup
SetupIconFile=icon.ico
Compression=lzma
SolidCompression=yes
AppComments=Lunar IPS-Patcher
UninstallDisplayIcon={uninstallexe}
DisableWelcomePage=True

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "Lunar-IPS\Lunar IPS.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Lunar-IPS\readme.txt"; DestDir: "{app}"; Flags: ignoreversion isreadme

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent