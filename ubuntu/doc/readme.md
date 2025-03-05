# Ubuntu installieren und einrichten 💾

Diese Anleitung soll Ihnen helfen, ein Ubuntu-System aufzusetzen, das sich gut für ein Studium an der Fakultät für Informatik an der Technischen Hochschule Mannheim eignet. Auch Mitarbeiter können diese Anleitung nutzen.

Sie können die Liste von oben nach unten abarbeiten oder spezifische Schritte überspringen. Zumindest den ersten Schritt ([Ubuntu Betriebssystem installieren](installation-ubuntu.md)) sollten Sie auf jeden Fall durchführen, da Sie ein Linux-System brauchen, um die anderen Anleitungen anzuwenden :wink:.

  1. [Ubuntu Betriebssystem installieren](installation-ubuntu.md)
  2. [NextCloud (Clousi) verbinden](setup-nextcloud.md)
  3. [Spezifische Pakete installieren](installation-packages.md)
  4. [WLAN konfigurieren](setup-wlan.md)
  5. [VPN einrichten](setup-vpn.md)
  6. [E-Mail und Kalender konfigurieren](setup-evolution.md)
  7. [Oberfläche (Gnome) anpassen](setup-gnome.md)
  8. [Password ändern](setup-password.md)
  9. [Passwort Manager](setup-password_manager.md)
  10. [Java-Version auswählen](setup-java-version.md)
  11. [Empfohlene kommerzielle Software](setup-commercial.md)

## Software-Empfehlungen

Für Umsteiger ist es manchmal schwierig eine geeignete Software unter Linux zu finden, da die Auswahl doch überwältigend sein kann. Deswegen sind hier einige Vorschläge aufgeführt, die sich in der täglichen Arbeit bewährt haben.

| Bereich             | Windows Software        | Linux Alternative                                                |
|---------------------|-------------------------|------------------------------------------------------------------|
| Bildbearbeitung     | Adobe Photoshop         | Gimp<sup>f</sup>                                                 |
| Bildverwaltung      | Adobe Lightroom         | digiKam<sup>a</sup>                                              |
| RAW Entwicklung     | Adobe Lightroom         | darktable<sup>a</sup><br>RawTherapee<sup>a</sup>                 |
| Zeichenprogramm     |                         | Krita<sup>s</sup>                                                |
| Vektorgrafik        | Adobe Illustrator       | Inkscape<sup>f</sup>                                             |
| Desktop Publishing  | Adobe InDesign          | Scribus<sup>f</sup>                                              |
| WebCam              | Windows Camera          | Cheese<sup>a</sup>                                               |
| Videoschnitt        | Adobe Premiere Elements | OpenShot<sup>a</sup>                                             |
| Textverarbeitung    | Microsoft Word          | Libre Office<sup>a</sup><br>Softmaker&nbsp;Office<sup>*m</sup>   |
| E-Mail/Kalender     | Microsoft Outlook       | Evolution<sup>a</sup>                                            |
| Remote Desktop      | Microsoft RemoteDesktop | Remmina<sup>a</sup>                                              |
| Git-Oberfläche      | SourceTree              | Git-Cola<sup>a</sup>                                             |
| Video-Player        | Media Player            | VLC<sup>a</sup>                                                  |
| Music-Player        | iTunes<br>WinAmp:wink:  | Rhythmbox<sup>a</sup>                                            |
| Virtualisierung     | VMWare                  | Virtual Box<sup>a</sup>                                          |
| Screenshots         | Camtasia                | FlameShot<sup>s</sup>                                            |
| Screenvideos        | Camtasia                | Vokoscreen NG<sup>a</sup>                                        |
| Verschlüsselung     | Veracrypt               | Zulucrypt<sup>a</sup>                                            |
| PDF-Editor          | Adobe Acrobat           | MasterPDF Editor<sup>*m</sup>                                    |
| Programmierung      | Visual Studio           | Visual Studio Code<sup>s</sup>                                   |
| Diff-Tool           | Windiff                 | Meld<sup>a</sup>                                                 |
| LaTeX-Editor        | TeXniCenter             | TeXmaker<sup>a</sup>                                             |
| Keyboard Macros     |                         | Autokey<sup>a</sup>                                              |
| Streaming           | OBS                     | OBS<sup>a</sup>                                                  |
| Streaming           | Discord                 | Discord<sup>f</sup>                                              |
| Video-Konferenzen   | Zoom<br>WebEx           | Zoom<sup>f</sup><br>WebEx<sup>m</sup>                            |
| Java Programmierung | Eclipse<br>IntelliJ     | Eclipse<sup>f</sup><br>IntelliJ<sup>s</sup>                      |
| EBook-Management    | Calibre                 | Calibre<sup>f</sup>                                              |
| Browser             | Edge                    | Chromium<sup>s</sup><br>Opera<sup>m</sup><br>Firefox<sup>a</sup> |
| Chat Client         |                         | Pidgin<sup>a</sup>                                               |
| Audio-Bearbeitung   |                         | Audacity<sup>s</sup>                                             |
| Password-Manager    |                         | KeepassXC<sup>s</sup>                                            |

Obwohl sich fast alle Programme über die Paketveraltung von Ubuntu (`apt install`) installieren lassen, findet man meist aktuellere Versionen als Snap oder Flatpak. Deswegen sind in der Tabelle die empfohlenen Installationswege angegeben. Nur in ganz seltenen Fällen, z.B. bei Google Chrome, muss man die Software selbst herunterladen und installieren; diese Programme sind mit <sup>m</sup> gekennzeichnet.

- *: Kommerzielles Produkt
- a: Installation über die Paketverwaltung `apt install -y ...`
- f: Installation als Flatpak: `install flathub -y ...`
- s: Installation als Snap: `snap install ...`
- m: Manuelle Installation mit Download aus dem Internet

Anders als bei Windows müssen Sie bei Linux die Programme nicht einzeln aktualisieren, sondern können alle Programme (und Ihr Betriebssystem) mit nur vier Kommandos aktuell halten:

```console
sudo apt -y update
sudo apt -y upgrade
sudo snap refresh
sudo flatpak update
```

Nur bei den mit <sup>m</sup> gekennzeichneten Programmen müssen Sie sich selbst um die Aktualisierung kümmern.
