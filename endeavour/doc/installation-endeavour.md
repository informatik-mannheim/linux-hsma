# Installation von EndeavourOS

## USB-Stick erstellen und booten

  1. Laden Sie sich EndeavourOS von der Webseite [herunter](https://endeavouros.com/).
  2. Verwenden Sie [Balena Etcher](https://www.balena.io/etcher/), um einen bootfähigen USB-Stick zu erstellen. Eine Anleitung finden Sie [hier](https://ubuntu.com/tutorials/create-a-usb-stick-on-windows#1-overview)
  3. Booten Sie den USB-Stick. Möglicherweise müssen Sie im BIOS erst das Booten von einem USB-Stick aktivieren oder den Stick in der Boot-Reihenfolge nach oben verschieben.

Wenn Sie den Stick erfolgreich gebootet haben, erscheint GRUB, der Boot-Manager von Linux.

<img src="img/endeavour_1.png" width="400">

Drücken Sie einfach "ENTER".

## Installation durchführen

### Installation starten

Nach dem Start des Betriebssystems erscheint nach ein paar Sekunden ein Dialog, in dem Sie "Start the Installer" auswählen müssen.

<img src="img/endeavour_2.png" width="400">


### Installationsmethode

Vom Boot-Medium kann EndeavourOS nur XFCE als Desktop-Umgebung installieren. Wir möchten aber das deutlich mächtigere Gnome auswählen. Deswegen müssen wir eine Online-Installation durchführen.

<img src="img/endeavour_3.png" width="300">

### Sprache auswählen

Wählen Sie die Sprache für die Installation (und das spätere System) aus.

<img src="img/endeavour_4.png" width="400">

### Zeitzone auswählen

<img src="img/endeavour_5.png" width="400">

### Tastatur-Layout wählen

<img src="img/endeavour_6.png" width="400">

### Desktop-Umgebung

EndeavourOS unterstützt eine Reihe von Desktop-Umgebungen. Wir verwenden hier Gnome.

<img src="img/endeavour_7.png" width="400">

### Umfang der Installation

<img src="img/endeavour_8.png" width="400">

Hier können Sie es bei den Voreinstellungen belassen, weil wir die weitere Software in einem späteren Schritt installieren werden.


### Bootmanager

<img src="img/endeavour_9.png" width="400">


### Installationsart

Wenn Sie den Computer vollständig Linux widmen wollen oder eine virtuelle Maschine installieren, ist die erste Option die Richtige. Falls Sie mehrere Betriebssysteme parallel installieren wollen, müssen Sie die zweite Option auswählen und die Festplatte partitionieren.

<img src="img/endeavour_10.png" width="400">

#### Vollverschlüsselung der Festplatte

Generell bietet es sich an, die Festplatte voll zu verschlüsseln. So sind Ihre Daten sowohl bei Verlust des Computers als auch bei Zugriff durch Strafverfolgungsbehörden oder Kriminelle (oder beides) geschützt. Wählen Sie hierzu das Häkchen an. Wollen Sie keine Verschlüsselung, so gehen Sie direkt auf "Weiter".

Haben Sie eine Verschlüsselung gewählt, müssen Sie noch ein Passwort als _Sicherheitsschlüssel_ festlegen. Wählen Sie hier eine lange und möglichst sichere Passphrase, die Sie sich gut merken können. Diese müssen Sie bei jedem Neustart des Systems eingeben.


### Benutzername und Passwort

Legen Sie Ihren Benutzernamen, Ihr Passwort und den Namen des Computers fest. Wählen Sie ein sicheres Passwort -- "mutti123" ist kein sicheres Passwort.

<img src="img/endeavour_11.png" width="400">

> Es kann passieren, dass bei der Passwort-Eingabe die Tastatureinstellungen nicht beachtet werden. In diesem Fall wird eine amerikanische Tastatur benutzt und "y" und "z" sind vertauscht.


### Bereit zur Installation


<img src="img/endeavour_12.png" width="400">


Sie werden noch einmal gewarnt, dass die ausgewählte Festplattenpartition überschrieben wird.

<img src="img/endeavour_13.png" width="400">


### Installation durchführen

Warten Sie, bis die Installation durchgelaufen ist.

<img src="img/endeavour_14.png" width="400">


### Neustart

Nach Abschluss der Installation drücken Sie auf "Jetzt neu starten".

<img src="img/endeavour_15.png" width="400">


## Erstmalige Anmeldung

### Festplatten-Kennwort

Wenn Sie die Festplatte verschlüsselt haben, müssen Sie bei jedem Neustart das Festplatten-Passwort eingeben.

<img src="img/endeavour_16.png" width="400">

Danach kommt das eigentliche Boot-Menue, das Sie einfach mit ENTER bestätigen können.

<img src="img/endeavour_17.png" width="400">


Melden Sie sich mit Ihrem Benutzernamen und Kennwort an.

<img src="img/endeavour_18.png" width="400">

Falls Ihr Passwort nicht funktioniert, könnte der bei der Passwort-Eingabe weiter oben beschriebene Fehler zugeschlagen haben. Versuchen Sie die Buchstaben "y" und "z" zu vertauschen. Sollten Sie dieses Problem haben, setzen Sie Ihr [Passwort neu](setup-password.md).


### Updates

Sie können jetzt noch einmal Updates installieren.

<img src="img/endeavour_19.png" width="400">
