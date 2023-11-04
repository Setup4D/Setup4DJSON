[![Logo da Setup4D](https://setup4d.com.br/github/assets/logotransparente.png)](https://www.setup4d.com.br) 

<a href="https://github.com/Setup4D/Setup4DUtility/blob/main/README-PTBr.md">
   <img src="https://user-images.githubusercontent.com/138676601/275272225-61609e1d-764f-4e9d-9ead-8593985af595.png">
</a>
<a href="https://github.com/Setup4D/Setup4DUtility/blob/main/README.md">
   <img src="https://user-images.githubusercontent.com/138676601/275272281-5f9f5df0-d563-4046-b5a9-207f0fa0e674.png">
</a>

# Setup4DJSON

[![Lazarus Supported Versions](https://img.shields.io/badge/Lazarus%20Supported%20Versions-2.2.6-blue.svg)](https://github.com/Setup4D/Setup4DUtility)
[![Delphi Supported Versions](https://img.shields.io/badge/Delphi%20Supported%20Versions-XE3..11-blue.svg)](https://github.com/Setup4D/Setup4DUtility)
[![Platforms](https://img.shields.io/badge/Supported%20platforms-Win32%20and%20Win64-red.svg)](https://github.com/Setup4D/Setup4DUtility) 

Bem-vindo(a) ao repositório do projeto Setup4DJSON! Esta aplicação foi desenvolvida para simplificar o uso de outros componentes em seus projetos. Ele fornece uma série de recursos convenientes para otimizar o desenvolvimento de aplicativos. Com o Setup4DJSON, você pode realizar interações com outros procedimentos e funções em suas aplicações Delphi de maneira rápida, simples e confiável. 

## 📐 Como utilizar

### ⚙️ Instalação

#### ⚡️ Automática (via boss)

* `[Optional]` Para facilitar recomendo utilizar [**Boss**](https://github.com/HashLoad/boss) (Dependency Manager for Delphi) para instalação, bastando apenas rodar o comando abaixo em um terminal  (Windows PowerShell for example):

```
boss install github.com/Setup4D/Setup4DJSON
```

#### ⚡️ Manual (Delphi)

* Se você optar por realizar a instalação manualmente, siga os passos abaixo:

   1. Faça o [download](https://github.com/Setup4D/Setup4DJSON/archive/refs/heads/main.zip) do projeto.
   2. Descompacte o arquivo baixado em uma pasta de sua escolha.
   3. Adicione a pasta extraída ao seu projeto, seguindo os passos abaixo:
   
      1. No Delphi, acesse o menu "Project" (Projeto).
      2. Selecione "Options" (Opções).
      3. No painel de opções, vá para "Resource Compiler" (Compilador de Recursos).
      4. Em "Directories and Conditionals" (Diretórios e Condicional), escolha "Include file search path" (Caminho de busca de arquivos de inclusão).
      5. Clique em "Browse" (Navegar) e adicione a pasta extraída do projeto.
   
         + Isso permitirá que seu projeto tenha acesso aos arquivos e recursos necessários do Setup4DJSON. Certifique-se de salvar as configurações após seguir esses passos.

            ```
            .\{Pasta}\src
            
            ```
### ⚙️ Dependências

* Este projeto depende do [**Setup4DUtility**](https://github.com/Setup4D/Setup4DUtility), desempenhando um papel crucial em suas funcionalidades operacionais. Quando você utiliza o [**Boss**](https://github.com/HashLoad/boss) como instalador do framework, a instalação do **Setup4DUtility** ocorre automaticamente. No entanto, se optar por uma instalação manual, siga os passos abaixo:

   1. Faça o [**download**](https://github.com/Setup4D/Setup4DUtility/archive/refs/heads/main.zip) do projeto ou acesse a  [**pagina do projeto**](https://github.com/Setup4D/Setup4DUtility) e realize o download.
   2. Descompacte o arquivo baixado em uma pasta de sua escolha.
   3. Adicione a pasta extraída ao seu projeto, indo para *Project > Options > Resource Compiler > Directories and Conditionals > Include file search path*.<p>      
   
   ```
   ./{Pasta}/src
   ```

## 📐 Modo de uso

### ⚙️ Idioma das mensagens

* O sistema oferece suporte a dois idiomas, com o inglês sendo o idioma padrão. No entanto, é possível utilizar o aplicativo em português do Brasil. Para fazer isso, siga as etapas abaixo:

   * **Opção 1: Configuração via Delphi:**
   
      ```
      Acesse Project > Options > Delphi Compiler > Conditionals Defines
      ```

      1. No Delphi, acesse o menu "Project" (Projeto).
      2. Selecione "Options" (Opções).
      3. No painel de opções, vá para "Delphi Compiler" (Compilador Delphi).
      4. Em "Conditionals Defines" (Definições Condicionais), adicione a diretiva *HAS_PORTUGUES*.

         + Isso permitirá que o aplicativo seja utilizado em português do Brasil. Lembre-se de salvar as configurações e recompilar o projeto após fazer essas alterações.

   * **Opção 2: Configuração manual:**

      1. Certifique-se de que a linha *{$DEFINE HAS_PORTUGUES}* no arquivo *Setup4DCEPLanguage.inc*, localizado em *.\{pasta}\src\requires\inc*, esteja descomentada (ou seja, sem as barras duplas "//").

         + Isso também permitirá que o aplicativo seja utilizado em português do Brasil. Não se esqueça de salvar as alterações e recompilar o projeto para que as configurações tenham efeito.

## 📐 Funções do TSetup4DJSON

* A classe TSetup4DJSON desempenha um papel crucial no suporte às funcionalidades do framework. Ela concentra uma variedade de funções e procedimentos que serão utilizados pelo framework, tornando a programação mais dinâmica e simplificada. Além disso, está alinhada com a agilidade da programação inline no ambiente Delphi.

### ⚙️ Interfaces do Setup4DJSON

#### 💻 `ISetup4DJSON`

* E A principal interface do framework Setup4DJSON é o ponto de entrada para acessar funcionalidades relacionadas a objetos ou arrays JSON. Esta interface representa o núcleo do framework, com todas as outras interfaces dependentes dela. Ao utilizar essa interface principal, você pode acessar as demais funcionalidades do framework de maneira organizada e simplificada. Essa abordagem foi desenvolvida para reduzir a complexidade e permitir que os desenvolvedores explorem as funcionalidades de maneira flexível e adaptativa.

#### 💻 `ISetup4DJSONObject`

* Essa interface estende a interface [ISetup4DJSON](#-isetup4djson), fornecendo métodos específicos para configurações relacionadas a objetos JSON.

#### 💻 `ISetup4DJSONArray`

* Esta interface também estende a interface [ISetup4DJSON](#-isetup4djson), porém, oferece métodos específicos para configurações relacionadas a arrays JSON.
  
### ⚙️ Métodos TSetup4DJSON

- Esta função implementa a interface  [ISetup4DJSON](#-isetup4djson) juntamente com todas as dependências necessárias. Ela abrange informações essenciais para configurar e ler objetos JSON ou arrays JSON.
  
#### 💻 `class function New: ISetup4DJSON;`

- Este é um método de classe, o que permite chamá-lo diretamente na classe, sem a necessidade de criar uma instância da mesma. Ele retorna um tipo que implementa a interface  [ISetup4DJSON](#-isetup4djson), indicando que o método cria e retorna uma instância da classe que implementa essa interface. O método cria uma nova instância da própria classe  [ISetup4DJSON](#-isetup4djson) usando o construtor, o que implica que o método `New` retorna uma nova instância de  [ISetup4DJSON](#-isetup4djson). Esse padrão é usado para criar novas instâncias de classes sem a necessidade de criar uma instância manualmente, simplificando a criação de objetos. A função `New` é uma maneira conveniente de instanciar essa classe.

#### 🧬 `function JSONObject : ISetup4DJSONObject;`

- Este método fornece uma instância que implementa a interface [ISetup4DJSONObject](#-isetup4djsonobject), permitindo o acesso às funções de  [ISetup4DJSONObject](#-isetup4djsonobject). É importante ressaltar que um construtor está disponível para garantir a reutilização do mesmo objeto de configuração ao longo da execução do [TSetup4DJSON](#-funções-do-tsetup4djson)., eliminando a necessidade de criar instâncias adicionais. Isso contribui para uma gestão eficiente e reduz a complexidade no desenvolvimento.4

  1. `function SetJSONObject: ISetup4DJSONObject; overload;`

      - Este método cria um novo objeto JSON e o associa à instância da classe, substituindo qualquer objeto JSON existente. Isso possibilita a configuração de um novo objeto JSON para uso futuro.
        
  2. `function GetMessageToJSON(const AValue: String): String;`

      - Este método converte uma string para o formato JSON, semelhante ao exemplo `{"mensagem": AValue}`. A variável `AValue` é um marcador para o valor que você deseja incorporar na mensagem JSON. Portanto, após a conversão, a mensagem terá o valor que você especificar em `AValue` dentro do campo "mensagem" do objeto JSON resultante.
        
  3. `function ToParseJSONObject(AValue: string): ISetup4DJSONObject; overload;;`

      - Este método converte uma string no formato JSON em um objeto `TJSONObject`, permitindo que você manipule os dados do JSON como um objeto dentro do ambiente.
        
  4. `function ToParseJSONObject(AValue: TJSONObject): ISetup4DJSONObject; overload;  `

      - Esse método permite carregar um objeto JSON externo na instância da classe, possibilitando a manipulação desse objeto JSON dentro do contexto da classe. Isso permite que você trabalhe com o objeto JSON dentro das funcionalidades oferecidas pela classe, tornando mais fácil a manipulação e processamento de dados JSON.
        
  5. `function ReleaseJSONObject: ISetup4DJSONObject;`

      - Esse método libera o objeto da memória, efetivamente liberando os recursos ocupados por esse objeto e permitindo que a memória seja recuperada pelo sistema. Isso é útil para evitar vazamento de memória e manter o uso eficiente dos recursos do sistema.
        
  6. `function AddPair(const AKey: string; const AValue: string): ISetup4DJSONObject; overload;`

      - Este método adiciona um par de chave e valor a um objeto JSON, permitindo que você insira informações no objeto no formato chave-valor. Isso é uma operação comum para a construção e manipulação de objetos JSON em Delphi.
        
  7. `function TryGetValue(const AKey: string): string; overload;`

      - Esse método tenta obter o valor associado à chave especificada de um objeto JSON. Ele permite que você acesse o valor correspondente a uma determinada chave no objeto JSON, facilitando a recuperação de informações específicas do JSON.
        
  8. `function TryGetValue(const AKey: string; AValue : Integer): Integer; overload;`

      - Esse método tenta obter o valor associado a uma chave em um objeto JSON. Se a chave não for encontrada ou se o valor não for um número, o método retornará o valor padrão especificado em `AValue`. Essa abordagem é útil para lidar com casos em que a chave pode não existir no JSON ou quando o valor associado à chave não é do tipo numérico. O valor padrão em `AValue` é retornado como uma alternativa caso a busca não seja bem-sucedida.
        
  9. `function AsJSONObject: TJSONObject;`

      - Esse método retorna o objeto JSON associado à instância da classe. Isso permite acessar e manipular o objeto JSON diretamente por meio da instância da classe em que o método é chamado.
        
  10. `function AsJSONString: String;`

      - Esse método retorna uma representação em formato de string do objeto JSON associado à instância. Isso permite obter uma representação textual do JSON, o que pode ser útil para salvar ou enviar dados JSON em formato de texto.
        
  11. `function IsJSONValid(const AValue: string): Boolean;`

      - Este método verifica se uma determinada string representa um JSON válido. Ele pode ser usado para validar se uma string segue a sintaxe correta de JSON. Se a string não for um JSON válido, o método retornará um resultado que indica que a string não atende aos critérios de formatação do JSON. Isso é útil para garantir a integridade dos dados JSON antes de processá-los.
        
  12. `function IsNotJSONValid(const AValue: string): Boolean;`

      - Este método verifica se uma determinada string não representa um JSON válido. Ele pode ser usado para identificar se uma string não está em conformidade com a sintaxe correta de JSON. Se a string não for um JSON válido, o método retornará um resultado indicando que a string não atende aos critérios de formatação do JSON. Isso é útil para identificar erros de formatação ou problemas nos dados JSON.
        
  14. `function Finish: ISetup4DJSON;`
  
      - Este método fornece uma instância que implementa a interface [ISetup4DJSON](#-isetup4djson). É utilizado para concluir a execução e obter uma referência à instância principal de [TSetup4DJSON](#-funções-do-tsetup4djson). Portanto, esta linha simplesmente retorna a referência à instância que a invocou.

#### 🧬 `function JSONArray : ISetup4DJSONArray;`

- Este método fornece uma instância que implementa a interface [ISetup4DJSONArray](#-isetup4djsonarray), permitindo o acesso às funções de  [ISetup4DJSONArray](#-isetup4djsonarray). É importante ressaltar que um construtor está disponível para garantir a reutilização do mesmo objeto de configuração ao longo da execução do [TSetup4DJSON](#-funções-do-tsetup4djson), eliminan   do a necessidade de criar instâncias adicionais. Isso contribui para uma gestão eficiente e reduz a complexidade no desenvolvimento.

  1. `function Finish: ISetup4DJSON;`
      - Este método fornece uma instância que implementa a interface [ISetup4DJSON](#-isetup4djson). É utilizado para concluir a execução e obter uma referência à instância principal de [TSetup4DJSON](#-funções-do-tsetup4djson). Portanto, esta linha simplesmente retorna a referência à instância que a invocou.

