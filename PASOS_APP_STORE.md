# Cómo publicar Aprendo Jugando en la App Store

Esta guía es para hacerlo en una Mac, paso a paso. No hace falta saber programar. La app ya está armada: solo hay que firmarla con tu cuenta de Apple, subirla y llenar la ficha en App Store Connect.

**Lo que no se puede hacer desde aquí:** firmar la app y subirla a Apple. Eso solo se puede en una Mac con Xcode, usando tu cuenta de desarrollador.

---

## Lo que necesitas

1. Una **Mac** (de 2020 en adelante está bien).
2. **Xcode**, gratis en la App Store de la Mac. Instálalo y ábrelo una vez para que termine de instalar sus herramientas. Tarda un rato.
3. Tu **cuenta de desarrollador de Apple** (cuesta 99 dólares al año) ya activa. Entra en [developer.apple.com](https://developer.apple.com/account) con tu Apple ID y confirma que el pago y el acuerdo aparecen como activos.
4. El archivo **AprendoJugando-ios.zip** y las capturas de la carpeta **screenshots**.
5. El archivo **privacidad.html**, publicado en una dirección de internet que cualquiera pueda abrir (Apple lo exige). Más abajo te digo cómo.

---

## 1. Publica la política de privacidad (obligatorio)

Apple pide una **dirección https** de la política, no un archivo suelto.

Una forma fácil, sin saber de páginas web:

1. Entra a [https://app.netlify.com/drop](https://app.netlify.com/drop) desde la computadora.
2. Arrastra el archivo `privacidad.html` a esa página.
3. Te va a dar una dirección, algo como `https://algo-aleatorio.netlify.app`.
4. Ábrela en el teléfono y confirma que se ve la política en español e inglés.
5. Copia esa dirección. La vas a pegar en App Store Connect.

Otras opciones: una página tuya, o GitHub Pages. Evita un enlace de Google Drive; a veces Apple no lo acepta.

---

## 2. Abre el proyecto en la Mac

1. Pasa el zip a la Mac (AirDrop, iCloud, correo o una USB).
2. Haz doble clic en `AprendoJugando-ios.zip` para descomprimirlo.
3. Entra a la carpeta `AprendoJugando`.
4. Haz doble clic en **AprendoJugando.xcodeproj**. Se abre Xcode.
5. Si Xcode pide instalar componentes o el simulador, acepta y espera.

Si más adelante cambias el archivo de los juegos, reemplaza `AprendoJugando/juegos.html` por la versión nueva y vuelve a archivar.

(Opcional, solo si alguien te lo pide: en esta misma carpeta está `project.yml`. En una Mac se puede regenerar el proyecto con `brew install xcodegen` y luego `xcodegen generate`. No hace falta si el `.xcodeproj` ya abre bien.)

---

## 3. Pon tu Team y revisa el identificador

1. En la barra izquierda, toca el proyecto azul **AprendoJugando** (el de hasta arriba).
2. En el centro, bajo **TARGETS**, toca **AprendoJugando**.
3. Abre la pestaña **Signing & Capabilities**.
4. Marca **Automatically manage signing**.
5. En **Team**, elige tu nombre o tu cuenta de desarrollador. Si no aparece, pulsa **Add Account…** e inicia sesión con el mismo Apple ID de la cuenta de desarrollador.
6. Deja el **Bundle Identifier** como `com.oscarrapalo.aprendojugando`, salvo que Xcode diga que ya está en uso. En ese caso cámbialo, por ejemplo a `com.oscarrapalo.aprendojugando1`, y usa **exactamente el mismo** después en App Store Connect.

Si aparece un error rojo de firma, casi siempre es porque la cuenta de desarrollador no está activa o no elegiste el Team.

---

## 4. Prueba la app en un iPhone (recomendado)

Así confirmas que se oye la voz y que las estrellitas se guardan.

1. Conecta tu iPhone a la Mac con el cable.
2. En tu iPhone: Ajustes → Privacidad y seguridad → Modo desarrollador (si aparece) y actívalo.
3. Arriba en Xcode, junto al botón de play, elige **tu iPhone** (no un simulador).
4. Pulsa el botón de play ▶️. La primera vez el teléfono puede pedir que confíes en el desarrollador: Ajustes → General → Gestión de VPN y dispositivos (o “Dispositivo” / “Developer”).
5. Revisa: se abre el menú, entras a Emociones, Colores y Formas, se oye la voz en español (sube el volumen y, si hace falta, quita el silencio del costado del iPhone), y las estrellas siguen ahí si cierras y abres la app.

Si algo no se oye, confirma que el botón 🔊 está encendido dentro de la app.

---

## 5. Archiva y súbela a Apple

Importante: para archivar hay que elegir un destino de **aparato real**, no un simulador.

1. Arriba en Xcode, en el selector de destino, elige **Any iOS Device (arm64)** o **Generic iOS Device**. Si no lo ves, desconecta el iPhone y vuelve a mirar la lista.
2. En el menú de arriba: **Product → Archive**. Espera a que termine. Puede tardar varios minutos la primera vez.
3. Se abre la ventana **Organizer** con el archivo que acabas de crear. Si no se abre: **Window → Organizer**.
4. Selecciona el archivo más reciente y pulsa **Distribute App**.
5. Elige **App Store Connect** → **Upload** → sigue con las opciones que vienen por defecto (firma automática).
6. Espera el “Upload Successful”.

La app todavía **no está en la tienda**. Solo llegó a tu cuenta de Apple. Ahora hay que crear la ficha y enviarla a revisión.

---

## 6. Crea la app en App Store Connect

1. Entra a [https://appstoreconnect.apple.com](https://appstoreconnect.apple.com) con tu Apple ID de desarrollador.
2. Ve a **Apps** (Mis apps) → el botón **+** → **Nueva app**.
3. Plataformas: **iOS**.
4. Nombre: **Aprendo Jugando** (este es el nombre que se ve en la tienda; máximo 30 caracteres).
5. Idioma principal: **Spanish (Mexico)** o **Spanish**.
6. Identificador de paquete: el mismo del paso 3 (`com.oscarrapalo.aprendojugando`, o el que hayas puesto).
7. SKU: un código interno tuyo, por ejemplo `aprendojugando001`. No se ve en la tienda.
8. Acceso de usuario: acceso completo, salvo que sepas que quieres otra cosa.

Si el identificador no aparece en la lista, espera unos minutos después de subir el archivo, o créalo antes en **Certificados, identificadores y perfiles** → Identifiers → el botón + → App ID.

---

## 7. Llena la ficha (versión 1.0)

Entra a la app que acabas de crear y completa lo siguiente. Abajo tienes el texto listo para copiar.

### Capturas de pantalla

Apple pide capturas del iPhone de **6.7 pulgadas**. Ya están hechas, en tamaño 1290 × 2796, en la carpeta `screenshots`:

- `01-inicio.png` — menú principal
- `02-emociones.png` — juego de emociones
- `03-colores.png` — juego de colores
- `04-formas.png` — juego de formas

Súbelas en ese orden, en el recuadro de iPhone de 6.7". Se pueden arrastrar.

Esta app es **solo para iPhone**, así que no hace falta captura de iPad. Si App Store Connect te pide **otro tamaño de iPhone** (por ejemplo 6.5"), avísame y las preparo, o prueba a subir las mismas si la página te lo permite.

### Categoría y programa para niños

- Categoría principal: **Education** (Educación). Si te deja una segunda, **Games → Family** o **Games → Educational**.
- En el cuestionario de la app, inscríbela en la **categoría Kids** (Made for Kids).
- Elige un grupo de edad. Esta app sirve para **5 años o menos** y también para **6–8**.
  - **5 and under / 5 o menos** es la más estricta y encaja bien (juegos muy simples, sin enlaces, sin cuentas, sin anuncios).
  - **6–8** también es válida si prefieres ese rango.
- En el cuestionario de contenido (edad): responde que **no** hay violencia, miedo fuerte, temas para adultos, compras, anuncios, redes sociales ni recopilación de datos. La voz es del sistema, no hay chat ni usuario.

### Privacidad de la app

1. En **App Privacy** (Privacidad de la app), pulsa **Get Started** o **Edit**.
2. ¿Usas protocolos de privacidad para recopilar datos? **No**.
3. Elige **Data Not Collected** / **Datos no recopilados**.
4. Guarda.
5. En el campo **Privacy Policy URL** (URL de la política de privacidad), pega la dirección https del paso 1.

### Otros campos

- **Copyright:** por ejemplo `2026 Oscar Rapalo`.
- **Información de contacto** (para Apple, no se publica toda): tu correo y teléfono reales.
- **URL de soporte:** Apple también pide una página de soporte. Puedes usar la misma de la política de privacidad si tiene un apartado de contacto, o una página simple tuya. Un perfil de redes no siempre lo aceptan.
- **Cifrado:** la app no usa cifrado especial. Marca que **no** usa cifrado no exento (ITSAppUsesNonExemptEncryption ya está en no). En el formulario, indica que no exportas cifrado sujeto a regulación, según te lo pregunten.
- Precio: **Gratis**.
- No agregues compras dentro de la app ni anuncios. En la categoría Kids eso además te puede hacer rechazar la revisión.

Cuando el archivo que subiste con Xcode aparezca en **Build** (compilación), selecciónalo. A veces tarda de 10 minutos a una hora en procesarse. Si llega un correo de Apple sobre un error en el build, léelo o avísame.

---

## 8. Texto para la ficha (cópialo)

El idioma principal de la ficha puede ser español. Aun así conviene agregar también el inglés: en la página de la versión, busca **Localizations** o **Idiomas** y añade **English**.

### Español

**Nombre:** Aprendo Jugando

**Subtítulo:** Emociones, colores y formas

**Descripción:**

Aprendo Jugando es una app sencilla y tranquila para que los niños aprendan emociones, colores y formas jugando.

Hay tres juegos:
• Emociones: feliz, triste, enojado, asustado, sorprendido y calmado
• Colores: rojo, azul, amarillo, verde y más
• Formas: círculo, cuadrado, triángulo, estrella, corazón y rectángulo

Cada juego tiene dos modos:
• Aprender: el niño ve cada imagen y escucha su nombre en voz alta
• Jugar: elige la respuesta correcta y gana estrellitas

La app habla en español, con un ritmo calmado. Si se equivoca, solo le dice “Intenta otra vez”. No hay reloj, ni puntos en contra, ni anuncios.

Está pensada para niños pequeños y también para niños con autismo u otras necesidades de aprendizaje. Se usa sin cuenta y sin internet. No recolecta datos: las estrellas se guardan solo en el aparato.

**Palabras clave (máximo 100 caracteres, no se ven en la tienda, pero ayudan a que te encuentren):**

```
autismo,niños,emociones,colores,formas,aprender,educación,especial,preescolar,terapia,infantil,habla
```

**Texto promocional** (opcional, se puede cambiar sin enviar una versión nueva):

Juegos calmados de emociones, colores y formas, con voz en español y sin anuncios.

### English

**Name:** Aprendo Jugando

**Subtitle:** Emotions, colors, and shapes

**Description:**

Aprendo Jugando is a simple, calm app that helps children learn emotions, colors, and shapes through play.

There are three games:
• Emotions: happy, sad, angry, scared, surprised, and calm
• Colors: red, blue, yellow, green, and more
• Shapes: circle, square, triangle, star, heart, and rectangle

Each game has two modes:
• Learn: the child sees each picture and hears its name out loud
• Play: the child picks the right answer and earns stars

The app speaks Spanish in a gentle voice. If the answer is wrong, it simply says “Intenta otra vez” (Try again). There is no timer, no score penalty, and no ads.

It is designed for young children, including children with autism or other learning needs. There is no account and no internet connection required. The app does not collect data: stars are stored only on the device.

**Keywords:**

```
autism,kids,emotions,colors,shapes,learning,special,preschool,education,therapy,toddler,speech,games
```

**Promotional text** (optional):

Calm games for emotions, colors, and shapes, with Spanish speech and no ads.

---

## 9. Envía a revisión

1. Revisa que no falte un campo con un aviso rojo.
2. Pulsa **Add for Review** / **Añadir para revisión**, y luego **Submit to App Review** / **Enviar a revisión**.
3. En las preguntas de revisión, di la verdad: la app es gratuita, no hay cuenta de prueba, no hay contenido restringido. Si te piden un video o notas, puedes escribir en inglés o español algo así: “Educational games for young children. No account, no ads, works offline.”

La revisión suele tardar de uno a varios días. Las apps para niños a veces se miran con más detalle. Apple te avisa por correo si la aprueba, si pide un cambio o si la rechaza.

Si la rechazan, no borres el proyecto. Reenvía el correo de Apple y lo vemos juntos.

---

## Si algo falla

- **No aparece tu Team:** confirma que pagaste la cuenta de desarrollador y que iniciaste sesión en Xcode con ese mismo Apple ID.
- **El Bundle Identifier ya está en uso:** cámbialo en Xcode y en App Store Connect para que coincidan.
- **Archive está gris (no se puede pulsar):** el destino de arriba no puede ser un simulador; elige Any iOS Device.
- **No se oye la voz en el iPhone:** sube el volumen, quita el interruptor de silencio y deja el 🔊 encendido en la app.
- **El build no aparece en App Store Connect:** espera hasta una hora y revisa tu correo.
- **Piden otra captura o una URL que no aceptan:** avísame y lo preparamos.

Cuando Apple la apruebe, tú eliges si se publica de inmediato o en una fecha.
