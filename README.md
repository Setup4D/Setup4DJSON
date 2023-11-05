[![Logo da Setup4D](https://setup4d.com.br/github/assets/logotransparente.png)](https://www.setup4d.com.br) 

<a href="https://github.com/Setup4D/Setup4DJSON/blob/main/README-PTBr.md">
   <img src="https://user-images.githubusercontent.com/138676601/275272225-61609e1d-764f-4e9d-9ead-8593985af595.png">
</a>
<a href="https://github.com/Setup4D/Setup4DJSON/blob/main/README.md">
   <img src="https://user-images.githubusercontent.com/138676601/275272281-5f9f5df0-d563-4046-b5a9-207f0fa0e674.png">
</a>

# Setup4DJSON

[![Lazarus Supported Versions](https://img.shields.io/badge/Lazarus%20Supported%20Versions-2.2.6-blue.svg)](https://github.com/Setup4D/Setup4DJSON)
[![Delphi Supported Versions](https://img.shields.io/badge/Delphi%20Supported%20Versions-XE3..11-blue.svg)](https://github.com/Setup4D/Setup4DJSON)
[![Platforms](https://img.shields.io/badge/Supported%20platforms-Win32%20and%20Win64-red.svg)](https://github.com/Setup4D/Setup4DJSON) 

Welcome to the Setup4DJSON project repository! This application was developed to simplify the use of other components in your projects. It provides a range of convenient features to streamline application development. With Setup4DJSON, you can quickly, simply, and reliably interact with other procedures and functions in your Delphi applications.

## 📐 How to Use

### ⚙️ Installation

#### ⚡️ Automatic (via Boss)

* `[Optional]` To make it easier, I recommend using [**Boss**](https://github.com/HashLoad/boss) (Dependency Manager for Delphi) for installation. Simply run the command below in a terminal (e.g., Windows PowerShell):

```
boss install github.com/Setup4D/Setup4DJSON
```

If you have more sections or specific parts of the document you'd like me to translate, please feel free to share them, and I'll continue with the translations.

#### ⚡️ Manual (Delphi)

* If you choose to install manually, follow the steps below:

   1. Download the project from [here](https://github.com/Setup4D/Setup4DJSON/archive/refs/heads/main.zip).
   2. Unzip the downloaded file to a folder of your choice.
   3. Add the extracted folder to your project by following these steps:

      1. In Delphi, access the "Project" menu.
      2. Select "Options."
      3. In the options panel, go to "Resource Compiler."
      4. Under "Directories and Conditionals," choose "Include file search path."
      5. Click "Browse" and add the extracted project folder.

         + This will enable your project to access the necessary files and resources of Setup4DJSON. Make sure to save the settings after following these steps.

            ```
            .\{Folder}\src
            .\{Folder}\src\Object
            .\{Folder}\src\Interfaces
            .\{Folder}\src\inc
            .\{Folder}\src\Constantes
            .\{Folder}\src\Array
            ```

### ⚙️ Dependencies

* This project depends on [**Setup4DUtility**](https://github.com/Setup4D/Setup4DUtility), playing a crucial role in its operational functionalities. When using [**Boss**](https://github.com/HashLoad/boss) as the framework installer, the installation of **Setup4DUtility** occurs automatically. However, if you choose a manual installation, follow the steps below:

   1. Download the project from [**here**](https://github.com/Setup4D/Setup4DUtility/archive/refs/heads/main.zip) or visit the [**project page**](https://github.com/Setup4D/Setup4DUtility) and download it.
   2. Unzip the downloaded file to a folder of your choice.
   3. Add the extracted folder to your project by going to *Project > Options > Resource Compiler > Directories and Conditionals > Include file search path*.

   ```
   ./{Folder}/src
   ```
If you have more sections or specific parts of the document you'd like me to translate, please feel free to share them, and I'll continue with the translations.

## 📐 How to Use

### ⚙️ Language Settings

* The system supports two languages, with English as the default language. However, you can use the application in Brazilian Portuguese. To do so, follow these steps:

   * **Option 1: Configuration via Delphi:**
   
      ```
      Access Project > Options > Delphi Compiler > Conditionals Defines
      ```

      1. In Delphi, access the "Project" menu.
      2. Select "Options."
      3. In the options panel, go to "Delphi Compiler."
      4. Under "Conditionals Defines," add the directive *HAS_PORTUGUES*.

         + This will allow the application to be used in Brazilian Portuguese. Remember to save the settings and recompile the project after making these changes.

   * **Option 2: Manual Configuration:**

      1. Ensure that the line *{$DEFINE HAS_PORTUGUES}* in the file *Setup4DCEPLanguage.inc*, located in *.\{folder}\src\requires\inc*, is uncommented (i.e., without double slashes "//").

         + This will also allow the application to be used in Brazilian Portuguese. Don't forget to save the changes and recompile the project for the settings to take effect.

## 📐 TSetup4DJSON Functions

* The TSetup4DJSON class plays a crucial role in supporting the framework's functionalities. It encapsulates a variety of functions and procedures that will be used by the framework, making programming more dynamic and streamlined. Furthermore, it aligns with the inline programming agility in the Delphi environment.

### ⚙️ Setup4DJSON Interfaces

#### 💻 `ISetup4DJSON`

* The main interface of the Setup4DJSON framework is the entry point for accessing JSON object or array-related functionalities. This interface represents the core of the framework, with all other interfaces depending on it. By using this main interface, you can access other framework functionalities in an organized and simplified manner. This approach was developed to reduce complexity and allow developers to explore the functionalities flexibly and adaptively.

#### 💻 `ISetup4DJSONObject`

* This interface extends the [ISetup4DJSON](#-isetup4djson) interface, providing specific methods for JSON object-related configurations.

#### 💻 `ISetup4DJSONArray`

* This interface also extends the [ISetup4DJSON](#-isetup4djson) interface, but offers specific methods for JSON array-related configurations.

### ⚙️ TSetup4DJSON Methods

- This function implements the [ISetup4DJSON](#-isetup4djson) interface along with all necessary dependencies. It covers essential information for configuring and reading JSON objects or JSON arrays.

#### 💻 `class function New: ISetup4DJSON;`

- This is a class method, allowing it to be called directly on the class without needing to create an instance of it. It returns a type that implements the [ISetup4DJSON](#-isetup4djson) interface, indicating that the method creates and returns an instance of the class implementing this interface. The method creates a new instance of the [ISetup4DJSON](#-isetup4djson) class itself using the constructor, implying that the `New` method returns a new instance of [ISetup4DJSON](#-isetup4djson). This pattern is used to create new instances of classes without the need to manually create an instance, simplifying object creation. The `New` function is a convenient way to instantiate this class.

#### 🧬 `function JSONObject : ISetup4DJSONObject;`

- This method provides an instance that implements the [ISetup4DJSONObject](#-isetup4djsonobject) interface, allowing access to the functions of [ISetup4DJSONObject](#-isetup4djsonobject). It's important to note that a constructor is available to ensure the reuse of the same configuration object throughout the execution of [TSetup4DJSON](#-tsetup4djson-functions), eliminating the need to create additional instances. This contributes to efficient management and reduces complexity in development.

  1. `function SetJSONObject: ISetup4DJSONObject; overload;`

      - This method creates a new JSON object and associates it with the class instance, replacing any existing JSON object. This enables the configuration of a new JSON object for future use.
        
  2. `function GetMessageToJSON(const AValue: String): String;`

      - This method converts a string to JSON format, similar to the example `{"message": AValue}`. The variable `AValue` serves as a placeholder for the value you want to embed in the JSON message. Therefore, after the conversion, the message will have the value you specify in `AValue` within the "message" field of the resulting JSON object.
        
  3. `function ToParseJSONObject(AValue: string): ISetup4DJSONObject; overload;`

      - This method converts a string in JSON format into a `TJSONObject` object, allowing you to manipulate JSON data as an object within the environment.
        
  4. `function ToParseJSONObject(AValue: TJSONObject): ISetup4DJSONObject; overload;`

      - This method allows you to load an external JSON object into the class instance, enabling manipulation of that JSON object within the context of the class. This lets you work with the JSON object within the class's provided functionalities, making it easier to handle and process JSON data.
        
  5. `function ReleaseJSONObject: ISetup4DJSONObject;`

      - This method releases the object from memory, effectively freeing the resources occupied by this object and allowing the memory to be reclaimed by the system. This is useful to prevent memory leaks and maintain efficient system resource usage.
        
  6. `function AddPair(const AKey: string; const AValue: string): ISetup4DJSONObject; overload;`

      - This method adds a key-value pair to a JSON object, allowing you to insert information in key-value format. This is a common operation for constructing and manipulating JSON objects in Delphi.
        
  7. `function TryGetValue(const AKey: string): string; overload;`

      - This method attempts to retrieve the value associated with the specified key from a JSON object. It allows you to access the value corresponding to a specific key in the JSON object, making it easier to retrieve specific JSON information.
        
  8. `function TryGetValue(const AKey: string; AValue : Integer): Integer; overload;`

      - This method attempts to obtain the value associated with a key in a JSON object. If the key is not found or the value is not a number, the method will return the default value specified in `AValue`. This approach is useful for handling cases where the key may not exist in the JSON or when the value associated with the key is not of a numeric type. The default value in `AValue` is returned as an alternative in case the search is unsuccessful.
        
  9. `function AsJSONObject: TJSONObject;`

      - This method returns the JSON object associated with the class instance. This allows direct access and manipulation of the JSON object through the class instance in which the method is called.
        
  10. `function AsJSONString: String;`

      - This method returns a string representation of the JSON object associated with the instance. This allows you to obtain a textual representation of the JSON, which can be useful for saving or sending JSON data in text format.
        
  11. `function IsJSONValid(const AValue: string): Boolean;`

      - This method checks if a given string represents valid JSON. It can be used to validate if a string follows the correct JSON syntax. If the string is not valid JSON, the method will return a result indicating that the string doesn't meet the JSON formatting criteria. This is useful for ensuring the integrity of JSON data before processing it.
        
  12. `function IsNotJSONValid(const AValue: string): Boolean;`

      - This method checks if a given string does not represent valid JSON. It can be used to identify if a string does not comply with the correct JSON syntax. If the string is not valid JSON, the method will return a result indicating that the string doesn't meet the JSON formatting criteria. This is useful for identifying formatting errors or issues in JSON data.
        
  14. `function Finish: ISetup4DJSON;`
  
      - This method provides an instance that implements the [ISetup4DJSON](#-isetup4djson) interface. It's used to conclude execution and obtain a reference to the main [TSetup4DJSON](#-tsetup4djson-functions) instance. Therefore, this line simply returns a reference to the invoking instance.

#### 🧬 `function JSONArray : ISetup4DJSONArray;`

- This method provides an instance that implements the [ISetup4DJSONArray](#-isetup4djsonarray) interface, allowing access to the functions of [ISetup4DJSONArray](#-isetup4djsonarray). It's important to note that a constructor is available to ensure the reuse of the same configuration object throughout the execution of [TSetup4DJSON](#-tsetup4djson-functions), eliminating the need to create additional instances. This contributes to efficient management and reduces complexity in development.

  1. `function Finish: ISetup4DJSON;`

      - This method provides an instance that implements the [ISetup4DJSON](#-isetup4djson) interface. It's used to conclude execution and obtain a reference to the main [TSetup4DJSON](#-tsetup4djson-functions) instance. Therefore, this line simply returns a reference to the invoking instance.
