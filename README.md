# Aprendo Jugando (iOS)

Archivos para que Codemagic compile y suba la app a App Store Connect desde este repositorio. No reemplazan `juegos.html`, `PASOS_APP_STORE.md`, `PRIVACIDAD.md` ni `AprendoJugando-ios.zip` que ya están en la raíz.

## Qué hay que añadir a la raíz del repo `poly1994/play`

- `ios/` — proyecto Xcode (SwiftUI + WKWebView). El HTML del juego va en `ios/AprendoJugando/AprendoJugando/juegos.html`.
- `codemagic.yaml` — workflow `ios-release`.
- este `README.md` (opcional).

`project.yml` es la fuente de verdad. En cada build, Codemagic instala XcodeGen y regenera `AprendoJugando.xcodeproj`.

## Configurar Codemagic (una vez)

1. Conecta el repo `poly1994/play` en [Codemagic](https://codemagic.io).
2. En Team integrations > Developer Portal, añade la clave API de App Store Connect con el nombre exacto **Codemagic** (así está referenciada en `codemagic.yaml`).
3. Arranca el workflow `ios-release`. Firma en modo App Store para el bundle id `com.oscarrapalo.aprendojugando` y sube el IPA a App Store Connect, sin enviarlo a TestFlight ni a revisión.

Bundle id: `com.oscarrapalo.aprendojugando`  
Apple ID de la app: `6835252502`  
Versión: `1.0` (el número de build lo incrementa `agvtool` en cada corrida).
