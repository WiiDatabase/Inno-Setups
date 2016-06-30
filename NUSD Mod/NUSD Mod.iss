#define MyAppName "Nintendo Update Server Downloader"
#define MyAppVersion "1.9 Mod"
#define MyAppPublisher "WB3000 (Installer: WiiDatabase Team)"
#define MyAppURL "https://wiidatabase.de/downloads/pc-tools/nus-downloader/"
#define MyAppExeName "NUS Downloader.exe"

[Setup]
AppId={{123B45B9-7319-4E4F-9FE3-1EF7DF2F5A4D}
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
OutputBaseFilename=NUSD-setup
SetupIconFile=icon.ico
Compression=lzma
SolidCompression=yes
AppComments=Mit dem NUSD kannst du Dateien von Nintendos Update Servern laden
UninstallDisplayIcon={uninstallexe}
DisableWelcomePage=True

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "NUSD-Mod\NUS Downloader.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "NUSD-Mod\dsidatabase.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "NUSD-Mod\database.xml"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent