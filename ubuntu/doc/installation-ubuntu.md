# Installation von Ubuntu

## USB-Stick erstellen und booten

  1. Laden Sie sich Ubuntu 23.10 von der Webseite [herunter](https://ubuntu.com/#download).
  2. Verwenden Sie [Balena Etcher](https://www.balena.io/etcher/), um einen bootfähigen USB-Stick zu erstellen. Eine Anleitung finden Sie [hier](https://ubuntu.com/tutorials/create-a-usb-stick-on-windows#1-overview)
  3. Booten Sie den USB-Stick. Möglicherweise müssen Sie im BIOS erst das Booten von einem USB-Stick aktivieren oder den Stick in der Boot-Reihenfolge nach oben verschieben.

Wenn Sie den Stick erfolgreich gebootet haben, erscheint GRUB, der Boot-Manager von Linux.

<img src="img/ubuntu_0.png" width="400">

Drücken Sie einfach "ENTER".

## Installation durchführen

### Sprache auswählen

<img src="img/ubuntu_1.png" width="400">

### Ubuntu installieren auswählen

<img src="img/ubuntu_1b.png" width="400">

### Tastatur-Layout wählen

<img src="img/ubuntu_2.png" width="400">

### Netzwerk Verbindung

Legen Sie die Form der Netzwerkverbindung fest. Sie können auch ohne Netzwerk weitermachen, die Installation kann dann nur keine zusätzlichen Treiber nachladen.

<img src="img/ubuntu_2b.png" width="400">

### Installationsprogramm aktualisieren

Falls Sie eine Netzwerkverbindung konfiguriert haben, kann es sein, dass sich das Installationsprogramm selbst aktualisieren möchte. Wählen Sie in diesem Fall "Aktualisieren auf Version ..." aus.

<img src="img/ubuntu_2c.png" width="400">

Falls eine Aktualisierung durchgeführt wurde, beginnt die Installation von vorne.

### Aktualisierungsoptionen

Wählen Sie "Standard-Installation" und setzen Sie die beiden Häkchen für Aktualisierungen und Drittanbieter Software.

<img src="img/ubuntu_3.png" width="400">

Weitere Softwarepakete installieren wir später, sodass hier eine "Standard-Installation" ausreicht.


### Installationsart

Wenn Sie den Computer vollständig Ubuntu widmen wollen oder eine virtuelle Maschine installieren, ist die erste Option die Richtige. Falls Sie mehrere Betriebssysteme parallel installieren wollen, müssen Sie die zweite Option auswählen und die Festplatte partitionieren.

<img src="img/ubuntu_4.png" width="400">

#### Vollverschlüsselung der Festplatte

Generell bietet es sich an, die Festplatte voll zu verschlüsseln. So sind Ihre Daten sowohl bei Verlust des Computers als auch bei Zugriff durch Strafverfolgungsbehörden oder Kriminelle (oder beides) geschützt. Wählen Sie hierzu den Punkt "Erweitert". Wollen Sie keine Verschlüsselung, so gehen Sie direkt auf "Weiter".

<img src="img/ubuntu_4b.png" width="200">

Haben Sie eine Verschlüsselung gewählt, müssen Sie noch ein Passwort als _Sicherheitsschlüssel_ festlegen. Wählen Sie hier eine lange und möglichst sichere Passphrase, die Sie sich gut merken können. Diese müssen Sie bei jedem Neustart des Systems eingeben.

<img src="img/ubuntu_4c.png" width="400">


### Bereit zur Installation

Sie werden noch einmal gewarnt, dass die ausgewählte Festplattenpartition überschrieben wird.

<img src="img/ubuntu_5.png" width="400">

Drücken Sie auf "Installieren".


### Zeitzone

Legen Sie die Zeitzone fest. Normalerweise ist bereits die richtige Zeitzone ausgewählt. Falls nicht, wählen Sie **Berlin**.

<img src="img/ubuntu_6.png" width="400">

### Benutzername und Passwort

Legen Sie Ihren Benutzernamen, Ihr Passwort und den Namen des Computers fest. Wählen Sie ein sicheres Passwort -- "mutti123" ist kein sicheres Passwort.

<img src="img/ubuntu_7.png" width="400">

> Es kann passieren, dass bei der Passwort-Eingabe die Tastatureinstellungen von Ubuntu nicht beachtet werden. In diesem Fall wird eine amerikanische Tastatur benutzt und "y" und "z" sind vertauscht.

### Theme

Sie können jetzt das Theme für die Ubuntu-Oberfläche auswählen.

<img src="img/ubuntu_7b.png" width="400">


### Installation durchführen

Warten Sie, bis die Installation durchgelaufen ist.

<img src="img/ubuntu_8.png" width="400">

### Neustart

Nach Abschluss der Installation drücken Sie auf "Jetzt neu starten".

<img src="img/ubuntu_9.png" width="400">

Wenn Sie dazu aufgefordert werden, entfernen Sie den USB-Stick und drücken Sie "ENTER"-

<img src="img/ubuntu_9b.png" width="200">


## Erstmalige Anmeldung

### Festplatten-Kennwort

Wenn Sie die Festplatte verschlüsselt haben, müssen Sie bei jedem Neustart das Festplatten-Passwort eingeben.

<img src="img/ubuntu_9c.png" width="400">

Melden Sie sich mit Ihrem Benutzernamen und Kennwort an.

<img src="img/ubuntu_10.png" width="400">

Falls Ihr Passwort nicht funktioniert, könnte der bei der Passwort-Eingabe weiter oben beschriebene Fehler zugeschlagen haben. Versuchen Sie die Buchstaben "y" und "z" zu vertauschen. Sollten Sie dieses Problem haben, setzen Sie Ihr [Passwort neu](setup-password.md).

#### Updates

Möglicherweise bietet Ihnen Ubuntu jetzt an, neuere Updates herunterzuladen. Bestätigen Sie diesen Dialog.

<img src="img/ubuntu_11.png" width="400">

<img src="img/ubuntu_11b.png" width="400">

<img src="img/ubuntu_11c.png" width="400">


#### Online-Konten verbinden

Nachdem die Updates installiert wurden, bietet Ihnen Ubuntu an, Ihre Online-Konten zu verbinden.

<img src="img/ubuntu_12.png" width="400">

Eine Anleitung für das Einrichten der Online-Konten finden Sie [hier](setup-nextcloud.md).


#### Letzte Setup-Schritte

Nach der Einrichtung der Cloud (oder dem Überspringen des Dialoges) werden noch Abfragen zum Datenschutz gemacht.

<img src="img/setup_1.png" width="400">

Geben Sie keine Ortungsdienste frei.

<img src="img/setup_2.png" width="400">

Nach Abschluss der Dialoge ist das System installiert.

<img src="img/setup_3.png" width="400">

Sie sehen den Ubuntu-Desktop.

<img src="img/ubuntu_13.png" width="400">

Die Anordnung der Elemente mag Ihnen etwas seltsam erscheinen. Wie Sie einen Look bekommen, der eher an Windows oder macOS erinnert, ist [hier](setup-gnome.md) beschrieben.

[Zurück](readme.md)
