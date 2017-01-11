#define MyAppName "Ultimate VC Injector for 3DS"
#define MyAppVersion "1.11"
#define MyAppPublisher "Asdolo (Installer: WiiDatabase Team)"
#define MyAppURL "https://wiidatabase.de/3ds-downloads/pc-tools/"

[Setup]
AppId={{F35C2880-1EDD-4DF5-971D-660CF655D0E3}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={userappdata}\{#MyAppName}
DefaultGroupName=3DS-Tools
AllowNoIcons=yes
OutputBaseFilename=Ultimate-VC-Injector-for-3DS-setup
SetupIconFile=icon.ico
Compression=lzma2/ultra64
SolidCompression=yes
AppComments=Spiele in 3DS-Virtual-Console-Spiele injizieren
UninstallDisplayIcon={uninstallexe}
DisableWelcomePage=True

[Languages]
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Types]
Name: "full"; Description: "Vollständig"
Name: "injector"; Description: "Alle Injector"
Name: "forwarder"; Description: "Alle Forwarder Maker"
Name: "custom"; Description: "Benutzerdefiniert"; Flags: iscustom

[Components]
Name: "GB"; Description: "Game Boy Injector"; Types: full injector
Name: "GBC"; Description: "Game Boy Color Injector"; Types: full injector
Name: "GBA"; Description: "Game Boy Advance Injector"; Types: full injector
Name: "GameGear"; Description: "Game Gear Injector"; Types: full injector
Name: "MegaDrive"; Description: "Genesis/Mega Drive Forwarder Maker"; Types: full forwarder
Name: "NES"; Description: "NES Injector"; Types: full injector
Name: "SNES"; Description: "SNES Injector (New3DS)"; Types: full injector
Name: "T16"; Description: "TurboGrafx16/PC Engine Injector"; Types: full injector
Name: "Web"; Description: "Web Forwarder Maker"; Types: full forwarder

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
#define BASE_DIR "Ultimate-VC-Injector-for-3DS"
Source: "{#BASE_DIR}\GB\*"; DestDir: "{app}\Ultimate GB VC Injector for 3DS"; Flags: ignoreversion; Components: GB
Source: "{#BASE_DIR}\GBC\*"; DestDir: "{app}\Ultimate GBC VC Injector for 3DS"; Flags: ignoreversion; Components: GBC
Source: "{#BASE_DIR}\GBA\*"; DestDir: "{app}\Ultimate GBA VC Injector for 3DS"; Flags: ignoreversion; Components: GBA
Source: "{#BASE_DIR}\Game-Gear\*"; DestDir: "{app}\Ultimate Game Gear VC Injector for 3DS"; Flags: ignoreversion; Components: GameGear
Source: "{#BASE_DIR}\GEN-MD\*"; DestDir: "{app}\Ultimate GEN-MD Forwarder Maker for 3DS"; Flags: ignoreversion; Components: MegaDrive
Source: "{#BASE_DIR}\NES\*"; DestDir: "{app}\Ultimate NES VC Injector for 3DS"; Flags: ignoreversion; Components: NES
Source: "{#BASE_DIR}\SNES\*"; DestDir: "{app}\Ultimate SNES VC Injector for 3DS"; Flags: ignoreversion; Components: SNES
Source: "{#BASE_DIR}\T16-PCE\*"; DestDir: "{app}\Ultimate T16-PCE VC Injector for 3DS"; Flags: ignoreversion; Components: T16
Source: "{#BASE_DIR}\Web\*"; DestDir: "{app}\Ultimate Web Forwarder Maker for 3DS"; Flags: ignoreversion; Components: Web

[Icons]
Name: "{group}\Ultimate VC Injector for 3DS\Ultimate GBC VC Injector for 3DS"; Filename: "{app}\Ultimate GBC VC Injector for 3DS\Ultimate GBC VC Injector for 3DS.exe"; Components: GBC
Name: "{commondesktop}\Ultimate GBC VC Injector for 3DS"; Filename: "{app}\Ultimate GBC VC Injector for 3DS\Ultimate GBC VC Injector for 3DS.exe"; Tasks: desktopicon; Components: GBC

Name: "{group}\Ultimate VC Injector for 3DS\Ultimate GB VC Injector for 3DS"; Filename: "{app}\Ultimate GB VC Injector for 3DS\Ultimate GB VC Injector for 3DS.exe"; Components: GB
Name: "{commondesktop}\Ultimate GB VC Injector for 3DS"; Filename: "{app}\Ultimate GB VC Injector for 3DS\Ultimate GB VC Injector for 3DS.exe"; Tasks: desktopicon; Components: GB

Name: "{group}\Ultimate VC Injector for 3DS\Ultimate GBA VC Injector for 3DS"; Filename: "{app}\Ultimate GBA VC Injector for 3DS\Ultimate GBA VC Injector for 3DS.exe"; Components: GBA
Name: "{commondesktop}\Ultimate GBA VC Injector for 3DS"; Filename: "{app}\Ultimate GBA VC Injector for 3DS\Ultimate GBA VC Injector for 3DS.exe"; Tasks: desktopicon; Components: GBA

Name: "{group}\Ultimate VC Injector for 3DS\Ultimate Game Gear VC Injector for 3DS"; Filename: "{app}\Ultimate Game Gear VC Injector for 3DS\Ultimate GG VC Injector for 3DS.exe"; Components: GameGear
Name: "{commondesktop}\Ultimate Game Gear VC Injector for 3DS"; Filename: "{app}\Ultimate Game Gear VC Injector for 3DS\Ultimate GG VC Injector for 3DS.exe"; Tasks: desktopicon; Components: GameGear

Name: "{group}\Ultimate VC Injector for 3DS\Ultimate GEN-MD Forwarder Maker for 3DS"; Filename: "{app}\Ultimate GEN-MD Forwarder Maker for 3DS\Ultimate GEN-MD Forwarder Maker for 3DS.exe"; Components: MegaDrive
Name: "{commondesktop}\Ultimate GEN-MD Forwarder Maker for 3DS"; Filename: "{app}\Ultimate GEN-MD Forwarder Maker for 3DS\Ultimate GEN-MD Forwarder Maker for 3DS.exe"; Tasks: desktopicon; Components: MegaDrive

Name: "{group}\Ultimate VC Injector for 3DS\Ultimate NES VC Injector for 3DS"; Filename: "{app}\Ultimate NES VC Injector for 3DS\Ultimate NES VC Injector for 3DS.exe"; Components: NES
Name: "{commondesktop}\Ultimate NES VC Injector for 3DS"; Filename: "{app}\Ultimate NES VC Injector for 3DS\Ultimate NES VC Injector for 3DS.exe"; Tasks: desktopicon; Components: NES

Name: "{group}\Ultimate VC Injector for 3DS\Ultimate SNES VC Injector for 3DS"; Filename: "{app}\Ultimate SNES VC Injector for 3DS\Ultimate SNES VC Injector for 3DS.exe"; Components: SNES
Name: "{commondesktop}\Ultimate SNES VC Injector for 3DS"; Filename: "{app}\Ultimate SNES VC Injector for 3DS\Ultimate SNES VC Injector for 3DS.exe"; Tasks: desktopicon; Components: SNES

Name: "{group}\Ultimate VC Injector for 3DS\Ultimate T16-PCE VC Injector for 3DS"; Filename: "{app}\Ultimate T16-PCE VC Injector for 3DS\Ultimate T16-PCE VC Injector for 3DS.exe"; Components: T16
Name: "{commondesktop}\Ultimate T16-PCE VC Injector for 3DS"; Filename: "{app}\Ultimate T16-PCE VC Injector for 3DS\Ultimate T16-PCE VC Injector for 3DS.exe"; Tasks: desktopicon; Components: T16

Name: "{group}\Ultimate VC Injector for 3DS\Ultimate Web Forwarder Maker for 3DS"; Filename: "{app}\Ultimate Web Forwarder Maker for 3DS\Ultimate Web Forwarder Maker for 3DS.exe"; Components: Web
Name: "{commondesktop}\Ultimate Web Forwarder Maker for 3DS"; Filename: "{app}\Ultimate Web Forwarder Maker for 3DS\Ultimate Web Forwarder Maker for 3DS.exe"; Tasks: desktopicon; Components: Web

[Code]
// Display warning, when no component is selected
function NextButtonClick(CurPageID: Integer): Boolean;
begin
  Result := True;

  if CurPageID = wpSelectComponents then
  begin
    if WizardSelectedComponents(False) = '' then
    begin
      MsgBox('Bitte wähle mindestens ein Programm aus.', mbInformation, MB_OK);
      Result := False;
    end;
  end;
end;