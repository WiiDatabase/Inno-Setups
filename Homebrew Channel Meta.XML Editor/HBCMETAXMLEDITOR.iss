#define MyAppName "Homebrew Channel MetaXML Editor"
#define MyAppVersion "1"
#define MyAppPublisher "WB3000 (Installer: WiiDatabase Team)"
#define MyAppURL "https://wiidatabase.de/downloads/pc-tools/homebrew-channel-meta-xml-editor/"
#define MyAppExeName "Homebrew Channel MetaXML Editor.exe"

[Setup]
AppId={{D18B501B-E1EA-413C-BE46-C7C11BAE14F7}
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
InfoBeforeFile=HBCMETAXMLEDITOR\ReadMe.txt
OutputBaseFilename=Homebrew Channel MetaXML Editor-setup
SetupIconFile=icon.ico
Compression=lzma
SolidCompression=yes
AppComments=Mit dem Homebrew Channel MetaXML Editor kannst du meta.xml von Homebrews editieren
UninstallDisplayIcon={uninstallexe}
DisableWelcomePage=True

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "HBCMETAXMLEDITOR\Homebrew Channel MetaXML Editor.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "HBCMETAXMLEDITOR\ReadMe.txt"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon