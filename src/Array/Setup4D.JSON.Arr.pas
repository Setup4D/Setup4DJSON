unit Setup4D.JSON.Arr;

interface

uses
  Setup4D.JSON.Interf;

type
  TSetup4DJSONArray = class(TInterfacedObject, ISetup4DJSONArray)
  private
    [weak]
    FParent : ISetup4DJSON;
  protected

    function Finish: ISetup4DJSON;

    Constructor Create; overload;
    Constructor Create(const AValue: ISetup4DJSON); overload;
  public

    Destructor Destroy; override;
    class function New: ISetup4DJSONArray; overload;
    class function New(const AValue: ISetup4DJSON): ISetup4DJSONArray; overload;
  end;

implementation

{ TSetup4DJSONArray }

constructor TSetup4DJSONArray.Create;
begin

end;

constructor TSetup4DJSONArray.Create(const AValue: ISetup4DJSON);
begin
  FParent := AValue;
end;

destructor TSetup4DJSONArray.Destroy;
begin

  inherited;
end;

function TSetup4DJSONArray.Finish: ISetup4DJSON;
begin
  Result := FParent;
end;

class function TSetup4DJSONArray.New(const AValue: ISetup4DJSON): ISetup4DJSONArray;
begin
  Result:= Self.Create(AValue);
end;

class function TSetup4DJSONArray.New: ISetup4DJSONArray;
begin
  Result:= Self.Create;
end;

end.
