{*******************************************************}
{                                                       }
{       Pascal Script Source File                       }
{       Run by RemObjects Pascal Script in CnWizards    }
{                                                       }
{       Generated by CnPack IDE Wizards                 }
{                                                       }
{*******************************************************}

program EditorMenu;

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

procedure Execute(Sender: TObject);
begin
  // WinExec(PChar('Notepad.exe "' + CnOtaGetCurrentSourceFileName + '"', SW_SHOW);
  InfoDlg('Will Open ' + CnOtaGetCurrentSourceFile + ' using Notepad.');
end;

var
  Executor: TCnContextMenuExecutor;
begin
  // InfoDlg('Will Add 2 Items to the Editor Context Menu.');
  
  Executor := TCnContextMenuExecutor.Create;
  Executor.Caption := 'Open File in External Editor';
  Executor.OnExecute := @Execute;
  RegisterEditorMenuExecutor(Executor);
end.

