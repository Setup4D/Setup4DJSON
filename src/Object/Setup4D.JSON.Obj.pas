unit Setup4D.JSON.Obj;

interface

uses
  Setup4D.JSON.Constantes,
  Setup4D.Utility,

{$IF DEFINED(FPC)}
  fpjson,
  jsonparser,
  SysUtils,
{$ELSE}
  REST.Json,
  System.JSON,
  System.SysUtils,
{$ENDIF}

  Setup4D.JSON.Interf;

type

  { TSetup4DJSONObject }

  TSetup4DJSONObject = class(TInterfacedObject, ISetup4DJSONObject)
  private
    {$IF NOT DEFINED(FPC)}[weak]{$ENDIF}
    FParent : ISetup4DJSON;
    FJSON : TJSONObject;
    FOwner : Boolean;
  protected
    function Owner : ISetup4DJSONObject;
    function NotOwner : ISetup4DJSONObject;

    function SetJSONObject: ISetup4DJSONObject; overload;
    function GetMessageToJSON(const AValue: String): String;

    function ToParseJSONObject(AValue: string): ISetup4DJSONObject; overload;
    function ToParseJSONObject(AValue: TJSONObject): ISetup4DJSONObject; overload;

    function ReleaseJSONObject: ISetup4DJSONObject;

    function AddPair(const AKey: string; const AValue: string): ISetup4DJSONObject; overload;

    function TryGetValue(const AKey: string): string; overload;
    function TryGetValue(const AKey: string; AValue : Integer): Integer; overload;
    function TryGetValue(const AKey: string; AValue : Double): Double; overload;

    function AsJSONObject: TJSONObject;
    function AsJSONString: String;

    function IsJSONValid(const AValue: string): Boolean;
    function IsNotJSONValid(const AValue: string): Boolean;

    function Finish: ISetup4DJSON;

    Constructor Create; overload;
    Constructor Create(const AValue: ISetup4DJSON); overload;
  public

    Destructor Destroy; override;
    class function New: ISetup4DJSONObject; overload;
    class function New(const AValue: ISetup4DJSON): ISetup4DJSONObject; overload;
  end;

implementation

{ TSetup4DJSONObject }

constructor TSetup4DJSONObject.Create;
begin
  SetJSONObject;
end;

function TSetup4DJSONObject.AddPair(const AKey: string;
  const AValue: string): ISetup4DJSONObject;
begin
  Result:= Self;
  FJSON.
{$IF DEFINED(FPC)}
     Add(AKey, TJSONStringType(AValue))
{$Else}
     AddPair(AKey, AValue)
{$ENDIF};
end;

function TSetup4DJSONObject.AsJSONObject: TJSONObject;
begin
  Result := FJSON;
end;

function TSetup4DJSONObject.AsJSONString: String;
begin
  Result:= FJSON.{$IF DEFINED(FPC)}AsJSON{$Else}ToJSON{$ENDIF};
end;

constructor TSetup4DJSONObject.Create(const AValue: ISetup4DJSON);
begin
  FParent := AValue;
  SetJSONObject;
end;

destructor TSetup4DJSONObject.Destroy;
begin
  if FOwner then
    ReleaseJSONObject;

  inherited;
end;

function TSetup4DJSONObject.Finish: ISetup4DJSON;
begin
  Result := FParent;
end;

function TSetup4DJSONObject.GetMessageToJSON(const AValue: String): String;
begin
  SetJSONObject;
  try
    AddPair('message', AValue);
    Result:= AsJSONString;
  finally
    ReleaseJSONObject;
  end;
end;

function TSetup4DJSONObject.IsJSONValid(const AValue: string): Boolean;
var
{$IF DEFINED(FPC)}
  LJSON        : TJSONData;
{$ELSE}
  LJSON: TJSONValue;
{$ENDIF}
begin
  Result := False;

  try
{$IF DEFINED(FPC)}
    LJSON := GetJSON(AValue);
{$ELSE}
    LJSON := TJSONObject.ParseJSONValue(AValue);
{$ENDIF}
    try
      Result := ((NOT (LJSON = nil)) AND (NOT (TSetup4DUtility.RemoveSpaces(AValue) = '{}')));
    finally
{$IF DEFINED(FPC)}
      FreeAndNil(LJSON);
{$ELSE}
      LJSON.{$IFDEF MSWINDOWS}Free{$ELSE}DisposeOf{$ENDIF};
{$ENDIF}
    end;
  except
  end;
end;

function TSetup4DJSONObject.IsNotJSONValid(const AValue: string): Boolean;
begin
  Result:= not IsJSONValid(AValue);
end;

class function TSetup4DJSONObject.New(const AValue: ISetup4DJSON): ISetup4DJSONObject;
begin
  Result:= Self.Create(AValue);
end;

function TSetup4DJSONObject.ReleaseJSONObject: ISetup4DJSONObject;
begin
  Result:= Self;
{$IF DEFINED(FPC)}
    FreeAndNil(FJSON);
{$Else}
    FJSON.{$IFDEF MSWINDOWS}Free{$ELSE}DisposeOf{$ENDIF};
{$ENDIF}
end;

function TSetup4DJSONObject.Owner: ISetup4DJSONObject;
begin
  Result := Self;
  FOwner := True;
end;

function TSetup4DJSONObject.NotOwner: ISetup4DJSONObject;
begin
  Result := Self;
  FOwner := False;
end;

function TSetup4DJSONObject.SetJSONObject: ISetup4DJSONObject;
begin
  Result := Self;

  ReleaseJSONObject;

  FJSON := TJSONObject.Create;
  FOwner := True;
end;

function TSetup4DJSONObject.ToParseJSONObject(
  AValue: string): ISetup4DJSONObject;
begin
  Result:= Self;

  if IsNotJSONValid(AValue) then
    raise Exception.Create(_ERROR_INVALID_JSON_MESSAGE);

  ReleaseJSONObject;

{$IF DEFINED(FPC)}
  FJSON:= TJSONObject(GetJSON(AValue));
{$Else}
  FJSON:= TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(AValue), 0) as TJSONObject;
{$ENDIF}
end;

function TSetup4DJSONObject.ToParseJSONObject(
  AValue: TJSONObject): ISetup4DJSONObject;
begin
  Result:= Self;
  FJSON:= AValue;
end;

function TSetup4DJSONObject.TryGetValue(const AKey: string;
  AValue: Double): Double;
{$IF DEFINED(FPC)}
var
  LField   : TJSONData;
{$ENDIF}
begin
  Result:= AValue;
{$IF DEFINED(FPC)}
  LField:= FJSON.FindPath(AKey);
  if Assigned(LField) and (LField.JSONType = jtNumber) then
    Result := LField.AsFloat;
{$ELSE}
  FJSON.TryGetValue<Double>(AKey, Result);
{$ENDIF}
end;

function TSetup4DJSONObject.TryGetValue(const AKey: string;
  AValue: Integer): Integer;
{$IF DEFINED(FPC)}
var
  LField   : TJSONData;
{$ENDIF}
begin
  Result:= AValue;
{$IF DEFINED(FPC)}
  LField:= FJSON.FindPath(AKey);
  if Assigned(LField) and (LField.JSONType = jtNumber) then
    Result := LField.AsInteger;
{$ELSE}
  FJSON.TryGetValue<Integer>(AKey, Result);
{$ENDIF}

end;

function TSetup4DJSONObject.TryGetValue(const AKey: string): string;
{$IF DEFINED(FPC)}
var
  LField   : TJSONData;
{$ENDIF}
begin
  Result:= EmptyStr;
{$IF DEFINED(FPC)}
  LField:= FJSON.FindPath(AKey);
  if Assigned(LField) and (LField.JSONType = jtString) then
    Result := LField.AsString;
{$ELSE}
  FJSON.TryGetValue<string>(AKey, Result);
{$ENDIF}

end;

class function TSetup4DJSONObject.New: ISetup4DJSONObject;
begin
  Result:= Self.Create;
end;

end.
