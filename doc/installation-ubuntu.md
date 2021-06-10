# Installation vom Ubuntu

## USB-Stick erstellen und booten

  1. Laden Sie sich Ubuntu 21.04 von der Webseite [herunter](https://ubuntu.com/#download).
  2. Verwenden Sie [Balena Etcher](https://www.balena.io/etcher/), um einen bootfähigen USB-Stick zu erstellen. Eine Anleitung finden Sie [hier](https://ubuntu.com/tutorials/create-a-usb-stick-on-windows#1-overview)
  3. Booten Sie den USB-Stick. Möglicherweise müssen Sie im BIOS erst das Booten von einem USB-Stick aktivieren oder den Stick in der Boot-Reihenfolge nach oben verschieben.

Wenn Sie den Stick erfolgreich gebootet haben, erscheint GRUB, der Boot-Manager von Linux.

<img src="img/ubuntu_0.png" width="300">

Drücken Sie einfach "ENTER".

## Installation durchführen
### Sprache auswählen

<img src="img/ubuntu_1.png" width="300">

### Tastatur-Layout wählen

<img src="img/ubuntu_2.png" width="300">

### Aktualisierungsoptionen

Wählen Sie "Normale Installation" und setzen Sie die beiden Häkchen für Aktualisierungen und Drittanbieter Software.

<img src="img/ubuntu_3.png" width="300">

### Installationsart

Wenn Sie den Computer vollständig Ubuntu widmen wollen oder eine virtuelle Maschine installieren, ist die erste Option die Richtige. Falls Sie mehrere Betriebssysteme parallel installieren wollen, müssen Sie die zweite Option auswählen und die Festplatte partitionieren.

<img src="img/ubuntu_4.png" width="300">

#### Vollverschlüsselung der Festplatte

Generell bietet es sich an, die Festplatte voll zu verschlüsseln. So sind Ihre Daten sowohl bei Verlust des Computers als auch bei Zugriff durch Strafverfolgungsbehörden oder Kriminelle (oder beides) geschützt. Wählen Sie hierzu den Punkt "Erweitert". Wollen Sie keine Verschlüsselung, so gehen Sie direkt auf "Jetzt installieren".

<img src="img/ubuntu_4b.png" width="200">

Haben Sie eine Verschlüsselung gewählt, müssen Sie noch ein Passwort  als _Sicherheitsschlüssel_ festlegen. Wählen Sie hier eine lange und möglichst sichere Passphrase, die Sie sich gut merken können. Diese müssen Sie bei jedem Neustart des Systems eingeben.

<img src="img/ubuntu_4c.png" width="400">

Drücken Sie auf "Jetzt installieren".

Sie werden noch einmal gewarnt, dass die ausgewählte Festplattenpartition überschrieben wird.

<img src="img/ubuntu_5.png" width="300">

### Zeitzone

Legen Sie die Zeitzone fest. Normalerweise ist bereits die richtige Zeitzone ausgewählt. Falls nicht, wählen Sie **Berlin**.

<img src="img/ubuntu_6.png" width="300">

### Benutzername und Passwort

Legen Sie Ihren Benutzernamen, Ihr Passwort und den Namen des Computers fest. Wählen Sie ein sicheres Passwort -- "mutti123" ist kein sicheres Passwort.

<img src="img/ubuntu_7.png" width="300">

> Es kann passieren, dass bei der Passwort-Eingabe die Tastatureinstellungen von Ubuntu nicht beachtet werden. In diesem Fall wird eine amerikanische Tastatur benutzt und "y" und "z" sind vertauscht.

### Installation durchführen

Warten Sie, bis die Installation durchgelaufen ist.

<img src="img/ubuntu_8.png" width="300">

### Neustart

Nach Abschluss der Installation drücken Sie auf "Jetzt neu starten".

<img src="img/ubuntu_9.png" width="300">

Wenn Sie dazu aufgefordert werden, entfernen Sie den USB-Stick und drücken Sie "ENTER"-

<img src="img/ubuntu_9b.png" width="200">

## Erstmalige Anmeldung

Melden Sie sich mit Ihrem Benutzernamen und Kennwort an. Bevor Sie das Kennwort abschicken, wählen Sie das Ubuntu-Logo unten rechts und setzen Sie die Option auf "Ubuntu on XORG". Dies sorgt dafür, dass für die grafische Oberfläche X11 und nicht Wayland benutzt wird. Dies ist sinnvoll, da Wayland nicht mit allen Programmen einwandfrei funktioniert.

<img src="img/ubuntu_10.png" width="300">

Falls Ihr Passwort nicht funktioniert, könnte der bei der Passwort-Eingabe weiter oben beschriebene Fehler zugeschlagen haben. Versuchen Sie die Buchstaben "y" und "z" zu vertauschen. Sollten Sie dieses Problem haben, setzen Sie Ihr [Passwort neu](setup-password.md).

Möglicherweise bietet Ihnen Ubuntu jetzt an, neuere Updates herunterzuladen. Bestätigen Sie diesen Dialog.

<img src="img/ubuntu_11.png" width="300">

Nachdem die Updates installiert wurden, bietet Ihnen Ubuntu an, Ihre Online-Konten zu verbinden.

<img src="img/ubuntu_12.png" width="300">

Eine Anleitung für das Einrichten der Online-Konten finden Sie [hier](setup-nextcloud.md).

Nach der Einrichtung der Cloud (oder dem Überspringen des Dialoges) werden noch Abfragen zum Datenschutz gemacht.

<img src="img/setup_1.png" width="300">

Geben Sie keine Ortungsdienste frei.

<img src="img/setup_2.png" width="300">

Nach Abschluss der Dialoge ist das System installiert.

<img src="img/setup_3.png" width="300">

Sie sehen den Ubuntu-Desktop.

<img src="img/ubuntu_13.png" width="300">

Die Anordnung der Elemente mag Ihnen etwas seltsam erscheinen. Wie Sie einen Look bekommen, der eher an Windows oder macOS erinnert, ist [hier](setup-gnome.md) beschrieben.

[Zurück](readme.md)