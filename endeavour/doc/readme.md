# EndeavourOS installieren und einrichten 💾

Diese Anleitung soll Ihnen helfen, ein EndeavourOS-System aufzusetzen, das sich gut für ein Studium an der Fakultät für Informatik an der Hochschule Mannheim eignet. Auch Mitarbeiter können diese Anleitung nutzen.

Sie können die Liste von oben nach unten abarbeiten oder spezifische Schritte überspringen. Zumindest den ersten Schritt ([EndeavourOS Betriebssystem installieren](installation-endeavour.md)) sollten Sie auf jeden Fall durchführen, da Sie ein Linux-System brauchen, um die anderen Anleitungen anzuwenden :wink:.

  1. [EndeavourOS Betriebssystem installieren](installation-endeavour.md)
  2. [Spezifische Pakete installieren](installation-packages.md)
  3. [WLAN konfigurieren](setup-wlan.md)
  4. [VPN einrichten](setup-vpn.md)
  5. [E-Mail und Kalender konfigurieren](setup-evolution.md)
  6. [Oberfläche (Gnome) anpassen](setup-gnome.md)
  7. [Password ändern](setup-password.md)
  9. [Empfohlene kommerzielle Software](setup-commercial.md)

## Software-Empfehlungen

Für Umsteiger ist es manchmal schwierig eine geeignete Software unter Linux zu finden, da die Auswahl doch überwältigend sein kann. Deswegen sind hier einige Vorschläge aufgeführt, die sich in der täglichen Arbeit bewährt haben.

| Bereich             | Windows Software        | Linux Alternative                                  |
|---------------------|-------------------------|----------------------------------------------------|
| Bildbearbeitung     | Adobe Photoshop         | Gimp                                               |
| Bildverwaltung      | Adobe Lightroom         | digiKam                                            |
| RAW Entwicklung     | Adobe Lightroom         | darktable<br>RawTherapee                           |
| Zeichenprogramm     |                         | Krita                                              |
| Vektorgrafik        | Adobe Illustrator       | Inkscape                                           |
| Desktop Publishing  | Adobe InDesign          | Scribus                                            |
| WebCam              | Windows Camera          | Cheese                                             |
| Videoschnitt        | Adobe Premiere Elements | OpenShot                                           |
| Textverarbeitung    | Microsoft Word          | Libre Office<br>Softmaker&nbsp;Office<sup>*m</sup> |
| E-Mail/Kalender     | Microsoft Outlook       | Evolution                                          |
| Remote Desktop      | Microsoft RemoteDesktop | Remmina                                            |
| Git-Oberfläche      | SourceTree              | Git-Cola                                           |
| Video-Player        | Media Player            | VLC                                                |
| Music-Player        | iTunes<br>WinAmp:wink:  | Rhythmbox                                          |
| Virtualisierung     | VMWare                  | Virtual Box                                        |
| Screenshots         | Camtasia                | FlameShot                                          |
| Screenvideos        | Camtasia                | Vokoscreen NG                                      |
| Verschlüsselung     | Veracrypt               | Zulucrypt                                          |
| PDF-Editor          | Adobe Acrobat           | MasterPDF Editor<sup>*</sup>                       |
| Programmierung      | Visual Studio           | Visual Studio Code                                 |
| Diff-Tool           | Windiff                 | Meld                                               |
| LaTeX-Editor        | TeXniCenter             | TeXmaker                                           |
| Keyboard Macros     |                         | Autokey                                            |
| Streaming           | OBS                     | OBS                                                |
| Streaming           | Discord                 | Discord                                            |
| Video-Konferenzen   | Zoom<br>WebEx           | Zoom<br>WebEx                                      |
| Java Programmierung | Eclipse<br>IntelliJ     | Eclipse<br>IntelliJ                                |
| EBook-Management    | Calibre                 | Calibre                                            |
| Browser             | Edge                    | Chromium<br>Opera<br>Firefox                       |
| Chat Client         |                         | Pidgin                                             |
| Audio-Bearbeitung   |                         | Audacity                                           |
| Password-Manager    |                         | KeepassXC                                          |


- *: Kommerzielles Produkt
- m: Manuelle Installation mit Download aus dem Internet

Anders als bei Windows müssen Sie bei Linux die Programme nicht einzeln aktualisieren, sondern können alle Programme (und Ihr Betriebssystem) mit nur einem Kommando aktuell halten.

```console
sudo eos-update --yay
```

Nur bei den mit <sup>m</sup> gekennzeichneten Programmen müssen Sie sich selbst um die Aktualisierung kümmern.
