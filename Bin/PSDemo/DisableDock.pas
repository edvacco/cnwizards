{*******************************************************}
{                                                       }
{       Pascal Script Source File                       }
{       Run by RemObjects Pascal Script in CnWizards    }
{                                                       }
{       Generated by CnPack IDE Wizards                 }
{                                                       }
{*******************************************************}

program DisableDock;

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

var
  I: Integer;
begin
  for I := 0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[I].DragKind = dkDock then
      Screen.Forms[I].DragKind := dkDrag;

    if Screen.Forms[I].DragMode = dmAutomatic then
      Screen.Forms[I].DragMode := dmManual;
  end;
end.
 
 