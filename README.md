<h1 align="center">C.R.U.D.</h1>
<p>CRUD es un acrónimo que representa las cuatro operaciones básicas que se pueden realizar en una base de datos o en una aplicación de manejo de datos.</p>

- <b>Create</b> 
- <b>Read</b>  
- <b>Update</b> 
- <b>Delete</b> 
<p>Estas operaciones permiten manipular y gestionar los datos almacenados en una base de datos de manera completa y eficiente.</p>

- <b>Create</b> (Crear):
  - Esta operación implica agregar nuevos registros a una base de datos.
  - En SQL, se realiza mediante la sentencia `INSERT`.
- <b>Read</b> (Leer):
  - Esta operación implica recuperar datos de la base de datos.
  - En SQL, se realiza mediante la sentencia `SELECT`.
- <b>Update</b> (Actualizar):
  - Esta operación implica modificar los registros existentes en una base de datos.
  - En SQL, se realiza mediante la sentencia `UPDATE`.
- <b>Delete</b> (Eliminar):
  - Esta operación implica borrar registros de una base de datos.
  - En SQL, se realiza mediante la sentencia `DELETE`.

<h1 align="center">Operador ternario en Java</h1>
<p>El operador ternario en Java es una forma concisa de escribir una declaración if-else en una sola línea.</p>

```java
variable = (condición) ? valor_si_verdadero : valor_si_falso;
```

<h3>Cómo funciona</h3>

- <b>Condición</b>: La expresión antes del signo de interrogación (`?`) es la condición que se evalúa. Debe ser una expresión booleana que resulte en `true` o `false`.
- <b>Valor si verdadero</b>: La expresión inmediatamente después del signo de interrogación (`?`) es el valor que se asigna a la variable si la condición es `true`.
- <b>Valor si falso</b>: La expresión después de los dos puntos (`:`) es el valor que se asigna a la variable si la condición es `false`.

```jsp
<option value="<%=c.getId()%>" <%=c.getId().equals(producto.getCategoria().getId())? "selected": ""%> ><%=c.getNombre()%></option>
```

<h3>Descomposición</h3>

- `<%=c.getId()%>`: Este código JSP dentro de las etiquetas `<%=%>` evalúa una expresión Java y la inserta en el HTML. Aquí, `c.getId()` obtiene el ID de la categoría `c` y lo establece como el valor de la opción (`value`) en el elemento `<option>`.
- `<%=c.getId().equals(producto.getCategoria().getId()) ? "selected" : "" %>`: Aquí es donde se utiliza el operador ternario.
  - Condición: `c.getId().equals(producto.getCategoria().getId())` verifica si el ID de la categoría actual `c` es igual al ID de la categoría asociada con el `producto`. Esto se hace utilizando el método `equals()` para comparar objetos en Java.
  - Valor si verdadero: Si la condición es `true` (es decir, los IDs son iguales), la expresión devuelve `"selected"`, lo que indica que esta opción debe mostrarse como seleccionada en la lista desplegable.
  - Valor si falso: Si la condición es `false`, la expresión devuelve una cadena vacía `""`, por lo que la opción no se marca como seleccionada.
- `<%=c.getNombre()%>`: Esto evalúa `c.getNombre()` para obtener el nombre de la categoría `c`, que se muestra como el texto visible de la opción en la lista desplegable.

<h1>Clase "Producto"</h1>

Paquete: `org.CCristian.apiservlet.webapp.headers.models`
<h3>Función:</h3>

- Representa un producto con atributos como `id`, `nombre`, `categoria`, `precio`, `sku` y `fechaRegistro`.
- Proporciona métodos `getter` y `setter` para acceder y modificar estos atributos.
- Permite encapsular la lógica de negocio relacionada con un producto.

<h1>Clase "Categoria"</h1>

Paquete: `org.CCristian.apiservlet.webapp.headers.models`
<h3>Función:</h3>

- Representa una categoría con atributos como `id` y `nombre`.
- Proporciona métodos `getter` y `setter` para acceder y modificar estos atributos.
- Se utiliza para clasificar productos en diferentes categorías.

<h1>Clase "ProductoRepositoryJdbcImpl"</h1>

Paquete: `org.CCristian.apiservlet.webapp.headers.repositories`

<h3>Función:</h3>

- Implementa las operaciones de CRUD (Crear, Leer, Actualizar, Eliminar) para productos en la base de datos.
- Utiliza JDBC para interactuar con la base de datos.
- Incluye métodos para listar todos los productos, buscar un producto por ID, guardar un producto (insertar o actualizar), y eliminar un producto.

<h1>Clase "CategoriaRepositoryImpl"</h1>

Paquete: `org.CCristian.apiservlet.webapp.headers.repositories`
<h3>Función:</h3>

- Implementa las operaciones de CRUD para categorías en la base de datos.
- Utiliza JDBC para interactuar con la base de datos.
- Incluye métodos para listar todas las categorías y buscar una categoría por ID.

<h1>Clase "ProductosServiceJdbcImpl"</h1>

Paquete: `org.CCristian.apiservlet.webapp.headers.services`
<h3>Función:</h3>

- Proporciona un servicio de alto nivel para manejar las operaciones relacionadas con productos y categorías.
- Utiliza los repositorios `ProductoRepositoryJdbcImpl` y `CategoriaRepositoryImpl` para acceder a la base de datos.
- Proporciona métodos para listar productos y categorías, buscar por ID, guardar y eliminar productos, encapsulando la lógica de negocio y manejo de excepciones.

<h1>Archivo "form.jsp"</h1>
<h3>Función:</h3>

- Presenta un formulario HTML para crear o editar productos.
- Muestra errores de validación en caso de entradas incorrectas o faltantes.
- Usa datos del `Producto` y las `Categorías` proporcionados en el request para rellenar y manejar el formulario.

<h1>Clase ProductoFormServlet</h1>

Paquete: `org.CCristian.apiservlet.webapp.headers.controllers`
<h3>Función:</h3>

- Controlador Servlet que maneja las solicitudes HTTP para el formulario de productos.
- En el método `doGet`, carga un producto existente si se proporciona un ID, o prepara un nuevo producto y categorías para el formulario.
- En el método `doPost`, valida la entrada del formulario, gestiona errores, y guarda el producto en la base de datos utilizando el servicio `ProductosServiceJdbcImpl`.
- Redirige a la página adecuada tras el procesamiento del formulario.
