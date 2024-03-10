# Proyecto de Base de Datos Distribuidas

Este proyecto de Base de Datos Distribuidas implementa una estrategia de segmentación mixta, que combina la segmentación vertical, horizontal y mixta. La arquitectura distribuida se compone de tres bases de datos en diferentes localidades: Localidad 1, Localidad 2 y Localidad 3. El objetivo es distribuir de manera eficiente los datos y proporcionar una vista consolidada utilizando una base de datos local.

## Estrategias de Segmentación

### Segmentación Vertical
La segmentación vertical se utiliza para dividir las tablas por columnas, permitiendo que cada localidad almacene atributos específicos de los datos.

### Segmentación Horizontal
La segmentación horizontal se implementa para dividir las tablas por filas, distribuyendo segmentos de datos entre las localidades.

### Segmentación Mixta
La segmentación mixta combina las estrategias vertical y horizontal para optimizar la distribución de datos.

## Tecnologías Utilizadas

- Base de Datos Relacional (ej. MySQL, PostgreSQL)
- Lenguaje de Consulta (ej. SQL)
- Arquitectura Distribuida

## Estructura del Proyecto

El proyecto se organiza en tres localidades, cada una con su propia base de datos. Los datos se extraen y consolidan en una base de datos central ubicada en el disco local.

- `Localidad1/`: Archivos relacionados con la Localidad 1.
- `Localidad2/`: Archivos relacionados con la Localidad 2.
- `Localidad3/`: Archivos relacionados con la Localidad 3.
- `Central/`: Archivos relacionados con la base de datos central.

## Configuración

1. Configura las conexiones a las bases de datos en cada localidad.
2. Asegúrate de que las tablas se hayan segmentado según las estrategias definidas.

## Cómo Utilizar

1. Inicia las bases de datos en cada localidad.
2. Ejecuta el proceso de extracción para consolidar los datos en la base de datos central.
3. Accede a la base de datos central para consultar los datos consolidados.

## Contribuciones

¡Las contribuciones son bienvenidas! Si encuentras algún problema o tienes ideas para mejorar la eficiencia de la segmentación, por favor, crea un problema o envía una solicitud de extracción.

## Licencia

Este proyecto está bajo la Licencia MIT - consulta el archivo [LICENSE](LICENSE) para más detalles.
