program CallCentre;

uses
  System.StartUpCopy,
  FMX.Forms,
  EntityForm in 'Forms\EntityForm.pas' {FormEntity},
  Entities in 'Entities.pas',
  ConnectionModule in 'Forms\ConnectionModule.pas' {SQLiteConnection: TDataModule},
  Database.Session in 'Database.Session.pas',
  Database.Session.Types in 'Database.Session.Types.pas',
  Database.Utilities in 'Database.Utilities.pas',
  MainForm in 'Forms\MainForm.pas' {FormMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TSQLiteConnection, SQLiteConnection);
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.


