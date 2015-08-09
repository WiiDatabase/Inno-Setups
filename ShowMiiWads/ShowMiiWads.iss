#define MyAppName "ShowMiiWads"
#define MyAppVersion "1.4"
#define MyAppPublisher "Leathl (Installer: WiiDatabase Team)"
#define MyAppURL "http://wiidatabase.de/downloads/pc-tools/showmiiwads/"
#define MyAppExeName "ShowMiiWads.exe"

[Setup]
AppId={{98F974CE-363A-47BC-BEEF-BC0C9B15668F}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={userappdata}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=gpl-2.0.txt
InfoBeforeFile=ShowMiiWads 1.4\Readme.txt
OutputBaseFilename=ShowMiiWads-setup
SetupIconFile=icon.ico
Compression=lzma
SolidCompression=yes
UninstallDisplayIcon={uninstallexe}
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "ShowMiiWads 1.4\ShowMiiWads_64.exe"; DestDir: "{app}"; DestName: "ShowMiiWads.exe"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "ShowMiiWads 1.4\ShowMiiWads_32.exe"; DestDir: "{app}"; DestName: "ShowMiiWads.exe"; Flags: ignoreversion; Check: not Is64BitInstallMode
Source: "ShowMiiWads 1.4\example.slang"; DestDir: "{app}"; Flags: ignoreversion
Source: "ShowMiiWads 1.4\FAQ.txt"; DestDir: "{app}"; Flags: ignoreversion isreadme
Source: "ShowMiiWads 1.4\License.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "ShowMiiWads 1.4\Readme.txt"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

