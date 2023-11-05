unit Setup4D.JSON;

interface

uses
  Setup4D.JSON.Interf;

type
  TSetup4DJSON = class(TInterfacedObject, ISetup4DJSON)
  private
    FJSONObject : ISetup4DJSONObject;
    FJSONArray : ISetup4DJSONArray;

  protected
    function JSONObject : ISetup4DJSONObject;
    function JSONArray : ISetup4DJSONArray;

  public
    Constructor Create;
    Destructor Destroy; override;
    class function New: ISetup4DJSON;
  end;

implementation

uses
  Setup4D.JSON.Obj,
  Setup4D.JSON.Arr;

constructor TSetup4DJSON.Create;
begin

end;

destructor TSetup4DJSON.Destroy;
begin

  inherited;
end;

function TSetup4DJSON.JSONArray: ISetup4DJSONArray;
begin
  if not Assigned(FJSONArray) then
    FJSONArray := TSetup4DJSONArray.New(Self);
  Result := FJSONArray;
end;

function TSetup4DJSON.JSONObject: ISetup4DJSONObject;
begin
  if not Assigned(FJSONObject) then
    FJSONObject := TSetup4DJSONObject.New(Self);
  Result := FJSONObject;
end;

class function TSetup4DJSON.New: ISetup4DJSON;
begin
  Result:= Self.Create;
end;

end.
