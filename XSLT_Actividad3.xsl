<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <!-- El titulo de la página va a ser Profesorado ya que mostrará todos los datos de los profesores-->
                <title>Profesorado</title>
                <link rel="stylesheet" href="css/style.css" />
            </head>
            <body>
                <div class="contenedor">
                    <!-- Cogemos el nombre del isnstituto donde se encuentran los profesores-->
                    <header>
                        <h1>
                            <xsl:value-of select="ite/@nombre" />
                        </h1>
                        <p>
                            Nombre de la empresa:
                            <xsl:value-of select="ite/empresa" />
                            <br />
                            Teléfono:
                            <xsl:value-of select="ite/telefono" />
                            <br />
                            Página web:
                            <a href="">
                                <xsl:value-of select="ite/@web" />
                            </a>
                        </p>
                    </header>

                    <div class="tablas">
                        <table border="2" id="prof">
                            <caption>Profesores</caption>
                            <tr>
                                <th>ID</th>
                                <th>Nombre</th>
                            </tr>
                            <!-- Como el ejercicio pide un mínimo de dos tablas, agrupo el profesorado por el cargo -->
                            <xsl:for-each select="ite/profesores/profesor">
                                <!--Con un bucle recorremos todos los profesores-->
                                <tr>
                                    <td>
                                        <xsl:value-of select="id" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="nombre" />
                                    </td>
                                </tr>
                            </xsl:for-each> <!--Cierre for-each de profesor-->
                        </table>

                        <table border="2" id="director">
                            <!--En este caso como solo existe una directora, no hace falta hacer un bucle.(Se podría dejar programado un bucle, para en el caso de que en un futuro se añadiesen varios miembros se actualizace) -->
                            <caption>Directora</caption>
                            <tr>
                                <th>Nombre</th>
                                <th>Dirección</th>
                            </tr>
                            <tr>
                                <td>
                                    <xsl:value-of select="ite/director/nombre" />
                                </td>
                                <td>
                                    <xsl:value-of select="ite/director/despacho" />
                                </td>
                            </tr>
                        </table>

                        <table border="2" id="jefe_est">
                            <!--En este caso como solo existe un Jefe de Estudio, no hace falta hacer un bucle.(Se podría dejar programado un bucle, para en el caso de que en un futuro se añadiesen varios miembros se actualizace) -->
                            <caption>Jefe de Estudios</caption>
                            <tr>
                                <th>Nombre</th>
                                <th>Dirección</th>
                            </tr>
                            <tr>
                                <td>
                                    <xsl:value-of select="ite/jefe_estudios/nombre" />
                                </td>
                                <td>
                                    <xsl:value-of select="ite/jefe_estudios/despacho" />
                                </td>
                            </tr>
                        </table>
                    </div>

                    <div class="titulos">

                        <h3>Ofertas de Títulos</h3>
                        <ol>
                            <xsl:for-each select="ite/ciclos/ciclo">
                                <li>
                                    <xsl:value-of select="@id" />
                                </li>
                                <ul>
                                    <li>
                                        <xsl:value-of select="nombre" />
                                    </li>
                                    <li>
                                        <xsl:value-of select="grado" />
                                    </li>
                                    <li>
                                        <xsl:value-of select="decretoTitulo/@año" />
                                    </li>
                                </ul>
                            </xsl:for-each>
                        </ol>
                    </div>

                    <div class="formulario">

                        <h1 id="form">Formulario de Contacto</h1>

                        <form action="" method="post">

                            <div id="personales">
                                <div class="datos_1">
                                    <div class="insert_nombre">
                                        <label for="nombre">Nombre:</label>
                                        <input type="text" id="nombre" />
                                    </div> <!-- Cierre div nombre-->
                                    <div class="insert_apellidos">
                                        <label for="apellidos">Apellidos:</label>
                                        <input type="text" id="apellidos" />
                                    </div> <!-- Cierre div apellidos-->
                                    <div class="insert_tlf">
                                        <label for="tlf">Móvil</label>
                                        <input type="tel" id="tlf"/>
                                    </div> <!-- Cierre div Tlf-->
                                    <div class="insert_email">
                                        <label for="email">Email</label>
                                        <input type="email" id="email"/>
                                    </div><!-- Cierre div email-->
                                </div> <!-- Cierre datos_1-->
                            </div><!-- Cierre div personales-->

                            <div id="notas">
                                <label for="otro">Dudas:</label>
                                <textarea name="notas_1" id="otro" cols="95" rows="10"></textarea>
                            </div><!-- Cierre div notas-->
                            
                            <div id="botones">
                                <button type="submit">Enviar</button>
                                <button type="reset">Reset</button>

                            </div><!-- Cierre div botones-->
                        </form>
                    </div>


                </div>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>