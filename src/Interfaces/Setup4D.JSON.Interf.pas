unit Setup4D.JSON.Interf;


{$IF DEFINED(FPC)}
  {$mode Delphi}
{$ELSE}
  {$I Setup4DJSONLanguage.inc}
{$ENDIF}



interface
uses
{$IF DEFINED(FPC)}
  jsonparser,
  fpjson
{$Else}
  System.JSON
{$ENDIF}
  ;
type
  ISetup4DJSON       = interface;
  ISetup4DJSONObject = interface;
  ISetup4DJSONArray = interface;

  ISetup4DJSON  = interface

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Cria uma inst�ncia de Setup4DJSONObject.
    /// </summary>
    /// <returns>
    /// Retorna a inst�ncia de um objeto que implementa a interface ISetup4DJSONObject,
    /// que pode ser utilizada para manipular e trabalhar com objetos JSON.
    /// </returns>
    /// <remarks>
    /// Esta fun��o cria e retorna um objeto que implementa a interface ISetup4DJSONObject,
    /// que pode ser utilizado para manipular e trabalhar com objetos JSON.
    /// O objeto retornado � uma nova inst�ncia, pronta para receber dados e ser processada.
    /// </remarks>
    {$ELSE}
    /// <summary>
    /// Creates an instance of Setup4DJSONObject.
    /// </summary>
    /// <returns>
    /// Returns an instance of an object that implements the ISetup4DJSONObject interface,
    /// which can be used to manipulate and work with JSON objects.
    /// </returns>
    /// <remarks>
    /// This function creates and returns an object that implements the ISetup4DJSONObject interface,
    /// which can be used to manipulate and work with JSON objects.
    /// The returned object is a new instance, ready to receive data and be processed.
    /// </remarks>
    {$ENDIF}
    function JSONObject : ISetup4DJSONObject;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Cria uma inst�ncia de Setup4DJSONArray.
    /// </summary>
    /// <returns>
    /// Retorna a inst�ncia de um objeto que implementa a interface ISetup4DJSONArray,
    /// que pode ser utilizada para manipular e trabalhar com objetos JSON Array.
    /// </returns>
    /// <remarks>
    /// Esta fun��o cria e retorna um objeto que implementa a interface ISetup4DJSONArray,
    /// que pode ser utilizado para manipular e trabalhar com objetos JSON Array.
    /// O objeto retornado � uma nova inst�ncia, pronta para receber dados e ser processada.
    /// </remarks>
    {$ELSE}
    /// <summary>
    /// Creates an instance of Setup4DJSONArray.
    /// </summary>
    /// <returns>
    /// Returns an instance of an object that implements the ISetup4DJSONArray interface,
    /// which can be used to manipulate and work with JSON Array objects.
    /// </returns>
    /// <remarks>
    /// This function creates and returns an object that implements the ISetup4DJSONObject interface,
    /// which can be used to manipulate and work with JSON Array objects.
    /// The returned object is a new instance, ready to receive data and be processed.
    /// </remarks>
    {$ENDIF}
    function JSONArray : ISetup4DJSONArray;
  end;

  ISetup4DJSONArray  = interface

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Retorna � interface anterior que realizou a chamada.
    /// </summary>
    /// <returns>
    /// Uma interface do framework do JSON.
    /// </returns>
    /// <remarks>
    /// Este m�todo finaliza a configura��o do framework do JSON.
    /// </remarks>
    {$ELSE}
    /// <summary>
    /// Returns to the previous interface that made the call.
    /// </summary>
    /// <returns>
    /// A JSON framework interface.
    /// </returns>
    /// <remarks>
    /// This method finalizes the configuration of the JSON framework.
    /// </remarks>
    {$ENDIF}
    function Finish: ISetup4DJSON;
  end;

  ISetup4DJSONObject = interface
    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Este m�todo cria um novo objeto JSON e o associa � inst�ncia da classe, substituindo qualquer objeto JSON existente.
    /// Isso possibilita a configura��o de um novo objeto JSON para uso futuro.
    /// </summary>
    /// <returns>
    /// Retorna uma inst�ncia de um objeto que implementa a interface ISetup4DJSONObject,
    /// que pode ser utilizada para manipular e trabalhar com objetos JSON.
    /// </returns>
    /// <remarks>
    /// Esta fun��o cria e retorna um objeto que implementa a interface ISetup4DJSONObject,
    /// que pode ser utilizado para manipular e trabalhar com objetos JSON.
    /// O objeto retornado � uma nova inst�ncia vazia, pronta para receber dados e ser processada.
    /// </remarks>
    {$ELSE}
    /// <summary>
    /// This method creates a new JSON object and associates it with the class instance, replacing any existing JSON object.
    /// This allows configuring a new JSON object for future use.
    /// </summary>
    /// <returns>
    /// Returns an instance of an object that implements the ISetup4DJSONObject interface,
    /// which can be used to manipulate and work with JSON objects.
    /// </returns>
    /// <remarks>
    /// This function creates and returns an object that implements the ISetup4DJSONObject interface,
    /// which can be used to manipulate and work with JSON objects.
    /// The returned object is a new empty instance, ready to receive data and be processed.
    /// </remarks>
    {$ENDIF}
    function SetJSONObject: ISetup4DJSONObject; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Converte uma string para formato JSON, conforme o exemplo "{"mensagem": AValue}
    /// </summary>
    /// <param name="AValue">A string a ser convertida para formato JSON.</param>
    /// <returns>A string no formato JSON.</returns>
    /// <remarks>
    /// Esta fun��o tem o intuito de converter uma string para o formato JSON,
    /// retornando a string no formato JSON resultante.
    /// </remarks>
    {$ELSE}
    /// <summary>
    /// Converts a string to JSON format, as per the example {"message": AValue}.
    /// </summary>
    /// <param name="AValue">The string to be converted to JSON format.</param>
    /// <returns>The string in JSON format.</returns>
    /// <remarks>
    /// This function aims to convert a string to JSON format,
    /// returning the resulting string in JSON format.
    /// </remarks>
    {$ENDIF}
    function GetMessageToJSON(const AValue: String): String;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Converte uma string JSON em um objeto TJSONObject que implementa a interface ISetup4DJSONObject.
    /// </summary>
    /// <param name="AValue">A string JSON a ser convertida.</param>
    /// <returns>
    ///   Retorna um objeto TJSONObject que implementa a interface ISetup4DJSONObject,
    ///   representando o conte�do da string JSON fornecida.
    /// </returns>
    /// <remarks>
    ///   Esta fun��o tem o intuito de converter uma string JSON em um objeto TJSONObject que implementa a interface ISetup4DJSONObject.
    ///   O objeto retornado pode ser utilizado posteriormente para manipular e trabalhar com o conte�do do JSON,
    ///   realizando opera��es espec�ficas relacionadas a JSON.
    /// </remarks>
    {$ELSE}
    /// <summary>
    /// Converts a JSON string to a TJSONObject object implementing the ISetup4DJSONObject interface.
    /// </summary>
    /// <param name="AValue">The JSON string to be converted.</param>
    /// <returns>
    ///   Returns a TJSONObject object implementing the ISetup4DJSONObject interface,
    ///   representing the content of the provided JSON string.
    /// </returns>
    /// <remarks>
    ///   This function is intended to convert a JSON string into a TJSONObject object that implements the ISetup4DJSONObject interface.
    ///   The returned object can be used later to manipulate and work with the JSON content,
    ///   performing specific operations related to JSON.
    /// </remarks>
    {$ENDIF}
    function ToParseJSONObject(AValue: string): ISetup4DJSONObject; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Um objeto (TJSONObject) que implementa a interface ISetup4DJSONObject.
    /// </summary>
    /// <param name="AValue">O objeto TJSONObject.</param>
    /// <returns>
    ///   Retorna um objeto que implementa a interface ISetup4DJSONObject,
    ///   representando o conte�do do objeto TJSONObject fornecido.
    /// </returns>
    /// <remarks>
    ///   Esta fun��o tem o intuito de instanciar o objeto TJSONObject no objeto que implementa a interface ISetup4DJSONObject.
    ///   O objeto retornado pode ser utilizado posteriormente para manipular e trabalhar com o conte�do do JSON,
    ///   realizando opera��es espec�ficas relacionadas a JSON.
    /// </remarks>
    {$ELSE}
    /// <summary>
    /// An object (TJSONObject) implementing the ISetup4DJSONObject interface.
    /// </summary>
    /// <param name="AValue">The TJSONObject object.</param>
    /// <returns>
    ///   Returns an object implementing the ISetup4DJSONObject interface,
    ///   representing the content of the provided TJSONObject object.
    /// </returns>
    /// <remarks>
    ///   This function is intended to instantiate the TJSONObject object within an object implementing the ISetup4DJSONObject interface.
    ///   The returned object can be used later to manipulate and work with the JSON content,
    ///   performing specific operations related to JSON.
    /// </remarks>
    {$ENDIF}
    function ToParseJSONObject(AValue: TJSONObject): ISetup4DJSONObject; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Libera o objeto da memoria.
    /// </summary>
    /// <returns>
    ///   Retorna uma nova inst�ncia de um objeto que implementa a interface ISetup4DJSONObject.
    /// </returns>
    /// <remarks>
    ///   Esta fun��o tem o intuito de liberar o objeto que implementa a interface ISetup4DJSONObject.
    /// </remarks>
    {$ELSE}
    /// <summary>
    /// Releases the object from memory.
    /// </summary>
    /// <returns>
    ///   Returns a new instance of an object implementing the ISetup4DJSONObject interface.
    /// </returns>
    /// <remarks>
    ///   This function is intended to release the object implementing the ISetup4DJSONObject interface.
    /// </remarks>
    {$ENDIF}
    function ReleaseJSONObject: ISetup4DJSONObject;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Adiciona um par de chave e valor ao objeto JSON.
    /// </summary>
    /// <param name="AKey">A chave do par.</param>
    /// <param name="AValue">O valor do par.</param>
    /// <returns>
    ///   Retorna uma refer�ncia para o objeto que implementa a interface ISetup4DJSONObject,
    ///   permitindo encadeamento de chamadas.
    /// </returns>
    /// <remarks>
    ///   Esta fun��o tem o intuito de adicionar um par de chave e valor ao objeto JSON.
    ///   A chave � fornecida como par�metro "AKey" e o valor como par�metro "AValue".
    ///   Ap�s adicionar o par, a fun��o retorna uma refer�ncia para o objeto JSON,
    ///   permitindo encadeamento de chamadas de m�todos subsequentes.
    /// </remarks>
    {$ELSE}
    /// <summary>
    /// Adds a key-value pair to the JSON object.
    /// </summary>
    /// <param name="AKey">The key of the pair.</param>
    /// <param name="AValue">The value of the pair.</param>
    /// <returns>
    ///   Returns a reference to the object implementing the ISetup4DJSONObject interface,
    ///   allowing method chaining.
    /// </returns>
    /// <remarks>
    ///   This function is intended to add a key-value pair to the JSON object.
    ///   The key is provided as the "AKey" parameter, and the value is provided as the "AValue" parameter.
    ///   After adding the pair, the function returns a reference to the JSON object,
    ///   allowing method chaining for subsequent calls.
    /// </remarks>
    {$ENDIF}
    function AddPair(const AKey: string; const AValue: string): ISetup4DJSONObject; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Tenta obter o valor associado � chave especificada do objeto JSON.
    /// </summary>
    /// <param name="AKey">A chave do valor a ser obtido.</param>
    /// <returns>
    ///   Retorna o valor associado � chave especificada se ela existir no objeto JSON,
    ///   caso contr�rio retorna uma string vazia.
    /// </returns>
    /// <remarks>
    ///   Esta fun��o tem o intuito de obter o valor associado � chave especificada do objeto JSON.
    ///   Se a chave existir no objeto, a fun��o retorna o valor associado a ela.
    ///   Caso contr�rio, retorna uma string vazia.
    /// </remarks>
    {$ELSE}
    /// <summary>
    /// Attempts to retrieve the value associated with the specified key from the JSON object.
    /// </summary>
    /// <param name="AKey">The key of the value to be retrieved.</param>
    /// <returns>
    ///   Returns the value associated with the specified key if it exists in the JSON object,
    ///   otherwise, it returns an empty string.
    /// </returns>
    /// <remarks>
    ///   This function is intended to retrieve the value associated with the specified key from the JSON object.
    ///   If the key exists in the object, the function returns the value associated with it.
    ///   Otherwise, it returns an empty string.
    /// </remarks>
    {$ENDIF}
    function TryGetValue(const AKey: string): string; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Tenta obter o valor associado � chave especificada do objeto JSON.
    /// </summary>
    /// <param name="AKey">A chave do valor a ser obtido.</param>
    /// <param name="AValue">Indentifica que vai retornar um inteiro e para sobrecarregar o metodo.</param>
    /// <returns>
    ///   Retorna o valor associado � chave especificada se ela existir no objeto JSON,
    ///   caso contr�rio retorna o valor do AValue.
    /// </returns>
    /// <remarks>
    ///   Esta fun��o tem o intuito de obter o valor associado � chave especificada do objeto JSON.
    ///   Se a chave existir no objeto, a fun��o retorna o valor associado a ela.
    ///   Caso contr�rio, retorna uma string vazia.
    /// </remarks>
    {$ELSE}
    /// <summary>
    /// Attempts to retrieve the value associated with the specified key from the JSON object.
    /// </summary>
    /// <param name="AKey">The key of the value to be retrieved.</param>
    /// <param name="AValue">An identifier that will return an integer and overloads the method.</param>
    /// <returns>
    ///   Returns the value associated with the specified key if it exists in the JSON object,
    ///   otherwise, it returns the AValue.
    /// </returns>
    /// <remarks>
    ///   This function is intended to retrieve the value associated with the specified key from the JSON object.
    ///   If the key exists in the object, the function returns the value associated with it.
    ///   Otherwise, it returns an empty string.
    /// </remarks>
    {$ENDIF}
    function TryGetValue(const AKey: string; AValue : Integer): Integer; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Retorna o objeto JSON associado � inst�ncia.
    /// </summary>
    /// <returns>
    /// O objeto JSON associado � inst�ncia.
    /// </returns>
    /// <remarks>
    ///   Esta fun��o retorna o objeto JSON associado � inst�ncia atual. O objeto JSON cont�m os pares
    ///   de chave-valor que foram adicionados � inst�ncia.
    /// </remarks>
    {$ELSE}
    /// <summary>
    /// Returns the JSON object associated with the instance.
    /// </summary>
    /// <returns>
    /// The JSON object associated with the current instance.
    /// </returns>
    /// <remarks>
    ///   This function returns the JSON object associated with the current instance. The JSON object contains
    ///   the key-value pairs that have been added to the instance.
    /// </remarks>
    {$ENDIF}
    function AsJSONObject: TJSONObject;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Retorna uma representa��o em formato de string do objeto JSON associado � inst�ncia.
    /// </summary>
    /// <returns>Uma string contendo a representa��o do objeto JSON.</returns>
    /// <remarks>
    ///   Esta fun��o retorna uma representa��o em formato de string do objeto JSON associado � inst�ncia atual.
    ///   A representa��o em string cont�m os pares de chave-valor que foram adicionados � inst�ncia.
    /// </remarks>
    {$ELSE}
    /// <summary>
    /// Returns a string representation of the JSON object associated with the instance.
    /// </summary>
    /// <returns>A string containing the representation of the JSON object.</returns>
    /// <remarks>
    ///   This function returns a string representation of the JSON object associated with the current instance.
    ///   The string representation contains the key-value pairs that have been added to the instance.
    /// </remarks>
    {$ENDIF}
    function AsJSONString: String;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Verifica se uma string representa um JSON v�lido.
    /// </summary>
    /// <param name="AValue">A string a ser verificada.</param>
    /// <returns>True se a string representa um JSON v�lido, False caso contr�rio.</returns>
    /// <remarks>
    ///   Esta fun��o verifica se uma string representa um JSON v�lido. Ela analisa a estrutura e sintaxe
    ///   do JSON para determinar se � v�lido. Retorna True se o JSON for v�lido e False caso contr�rio.
    /// </remarks>
    {$ELSE}
    /// <summary>
    /// Checks if a string represents a valid JSON.
    /// </summary>
    /// <param name="AValue">The string to be checked.</param>
    /// <returns>True if the string represents a valid JSON, False otherwise.</returns>
    /// <remarks>
    ///   This function checks if a string represents a valid JSON. It analyzes the structure and syntax
    ///   of the JSON to determine if it's valid. Returns True if the JSON is valid, and False otherwise.
    /// </remarks>
    {$ENDIF}
    function IsJSONValid(const AValue: string): Boolean;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Verifica se uma string n�o representa um JSON v�lido.
    /// </summary>
    /// <param name="AValue">A string a ser verificada.</param>
    /// <returns>True se a string n�o representa um JSON v�lido, False caso contr�rio.</returns>
    /// <remarks>
    ///   Esta fun��o verifica se uma string n�o representa um JSON v�lido. Ela analisa a estrutura e sintaxe
    ///   do JSON para determinar se � inv�lido. Retorna True se o JSON for inv�lido e False caso contr�rio.
    /// </remarks>
    {$ELSE}
    /// <summary>
    /// Checks if a string does not represent a valid JSON.
    /// </summary>
    /// <param name="AValue">The string to be checked.</param>
    /// <returns>True if the string does not represent a valid JSON, False otherwise.</returns>
    /// <remarks>
    ///   This function checks if a string does not represent a valid JSON. It analyzes the structure and syntax
    ///   of the JSON to determine if it's invalid. Returns True if the JSON is invalid, and False otherwise.
    /// </remarks>
    {$ENDIF}
    function IsNotJSONValid(const AValue: string): Boolean;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Retorna � interface anterior que realizou a chamada.
    /// </summary>
    /// <returns>
    /// Uma interface do framework do JSON.
    /// </returns>
    /// <remarks>
    /// Este m�todo finaliza a configura��o do framework do JSON.
    /// </remarks>
    {$ELSE}
    /// <summary>
    /// Returns to the previous interface that made the call.
    /// </summary>
    /// <returns>
    /// A JSON framework interface.
    /// </returns>
    /// <remarks>
    /// This method finalizes the configuration of the JSON framework.
    /// </remarks>
    {$ENDIF}
    function Finish: ISetup4DJSON;
  end;
implementation

end.
