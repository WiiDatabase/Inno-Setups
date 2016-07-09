#define MyAppName "Nintendont-Updater"
#define MyAppVersion "1.2.1.1"
#define MyAppPublisher "WiiDatabase Team"
#define MyAppURL "https://wiidatabase.de/downloads/pc-tools/nintendont-updater/"
#define MyAppExeName "Nintendont-Updater.exe"

[Setup]
AppId={{AB55F4D5-AC7C-40CC-9630-866114E7876F}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName=Wii-Tools
AllowNoIcons=yes
LicenseFile=mpl-2.0.txt
OutputBaseFilename=Nintendont-Updater-setup
SetupIconFile=icon.ico
Compression=lzma
SolidCompression=yes
AppComments=Aktualisiert Nintendont vollautomatisch
UninstallDisplayIcon={uninstallexe}
DisableWelcomePage=True
                 
[Languages]
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "Nintendont-Updater\Nintendont-Updater.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon