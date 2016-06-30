#define MyAppName "Wii Backup Manager"
#define MyAppVersion "0.4.6 build 79"
#define MyAppPublisher "fig2k4 (Installer: WiiDatabase Team)"
#define MyAppURL "https://wiidatabase.de/downloads/pc-tools/wii-backup-manager/"
#define MyAppExeName "WiiBackupManager.exe"

[Setup]
AppId={{017BDC07-CE06-4695-8C5D-672371268B50}
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
LicenseFile=gpl-3.0.txt
InfoBeforeFile=Wii-Backup-Manager\changelog.txt
OutputBaseFilename=WiiBackupManager-setup
SetupIconFile=icon.ico
Compression=lzma
SolidCompression=yes
AppComments=Wii-Spiele- und WBFS-Manager
UninstallDisplayIcon={uninstallexe}
DisableWelcomePage=True
ArchitecturesInstallIn64BitMode=x64
                 
[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "Wii-Backup-Manager\WiiBackupManager_Win64.exe"; DestDir: "{app}"; DestName: "WiiBackupManager.exe"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "Wii-Backup-Manager\WiiBackupManager_Win32.exe"; DestDir: "{app}"; DestName: "WiiBackupManager.exe"; Flags: ignoreversion; Check: not Is64BitInstallMode
Source: "Wii-Backup-Manager\export templates\*"; DestDir: "{app}\export templates"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Wii-Backup-Manager\lang\*"; DestDir: "{app}\lang"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Wii-Backup-Manager\media\*"; DestDir: "{app}\media"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Wii-Backup-Manager\visual styles\*"; DestDir: "{app}\visual styles"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Wii-Backup-Manager\7z_Win64.dll"; DestDir: "{app}"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "Wii-Backup-Manager\7z_Win32.dll"; DestDir: "{app}"; Flags: ignoreversion; Check: not Is64BitInstallMode
Source: "Wii-Backup-Manager\changelog.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "Wii-Backup-Manager\features.txt"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon