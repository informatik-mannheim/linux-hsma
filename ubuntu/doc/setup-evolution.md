# Evolution

Ein sehr leistungsfähiges Groupware-Programm unter Ubuntu heißt _Evolution_. Es ist bezüglich der Funktionalität in etwa mit Microsoft Outlook vergleichbar.

Starten Sie Evolution. Sollte es noch nicht [installiert](installation-packages.md) sein, können Sie es im Terminal mit dem folgenden Befehl installieren:

```console
sudo apt install -y evolution
```

## E-Mail einrichten

Beim ersten Start zeigt Evolution den Einrichtungsassistenten an. Klicken Sie auf "weiter".

<img src="img/evolution_1.png" width="400">

Da Sie keine Sicherungsdatei besitzen, können Sie den nächsten Dialog einfach mit "weiter bestätigen".

<img src="img/evolution_2.png" width="400">

Tragen Sie Ihren vollständigen Namen und Ihre E-Mail-Adresse ein und **entfernen** Sie den Haken "Eigenschaften des E-Mail-Servers anhand der eingegebenen E-Mail-Adresse abrufen". Klicken Sie "weiter".

<img src="img/evolution_3.png" width="400">

Tragen Sie die Zugangsdaten für den Mailserver der Hochschule ein.

  * Server: `stud.hs-mannheim.de` für Studierende und `mail.hs-mannheim.de` für Mitarbeiter.
  * Port: `993`
  * Benutzername: Ihre Matrikelnummer (für Studierende) oder Ihr zentraler Benutzername (für Mitarbeiter).

Klicken Sie auf "weiter".

<img src="img/evolution_4.png" width="400">

Konfigurieren Sie die Abrufeinstellungen für die E-Mails und gehen Sie auf "weiter".

<img src="img/evolution_5.png" width="400">

Für das Versenden der E-Mails geben Sie folgende Daten ein:

  * Server: `stud.hs-mannheim.de` für Studierende und `mail.hs-mannheim.de` für Mitarbeiter.
  * Port: `465`
  * Server erfordert Legitimation: Häkchen setzen
  * Benutzername: Ihre Matrikelnummer (für Studierende) oder Ihr zentraler Benutzername (für Mitarbeiter).

<img src="img/evolution_6.png" width="400">

Überprüfen Sie die Zusammenfassung und bestätigen Sie mit "weiter".

<img src="img/evolution_7.png" width="400">

Ihre E-Mail sollte eingerichtet sein und Sie können den Assistenten mit "Anwenden" beenden.

<img src="img/evolution_8.png" width="400">

## Unified Inbox

Eine Kritik an Evolution ist, dass es keine Unified-Inbox besitzt, d.h. einen Posteingang, in dem man alle eingegangenen E-Mails aus allen Accounts zusammengefasst sieht. Tatsächlich kann man eine solche Inbox aber sehr einfach konfigurieren, und zwar mithilfe der sogenannten "Such-Ordner".

Gehen Sie auf "Bearbeiten" -> "Suchordner" und klicken Sie im sich dann öffnenden Fenster auf "Hinzufügen".

<img src="img/evolution_unified_1.png" width="200">
<img src="img/evolution_unified_2.png" width="200">

Geben Sie dem Suchordner einen Namen, z.B. "Unified-Inbox". Legen Sie Folgendes fest:

  * Objekte suchen, die entsprechen: _eine der folgenden Bedingungen_.
  * Konversationen einschließen: _keine_.
  * _Status_ _ist_ _Gelesen_
  * _Status_ _ist nicht_ _Gelesen_ (den zweiten Eintrag bekommen Sie duch Klick auf "Bedingung hinzufügen")
  * Häkchen bei _Bei jeder Änderung des Quellordners automatisch aktualisieren_
  * _Bestimmte Ordner_

Klicken Sie auf Hinzufügen, um die Postfächer auszuwählen.

<img src="img/evolution_unified_3.png" width="300">

Es öffnen sich ein Dialog zur Auswahl der Ordner, die in die Unified-Inbox einbezogen werden sollen. Wählen Sie hier den Posteingang (_Inbox_) des ersten Accounts aus und klicken Sie auf "Hinzufügen".

<img src="img/evolution_unified_4.png" width="150">
<img src="img/evolution_unified_5.png" width="300">


Fügen Sie nach demselben Schema die weiteren Postfächer hinzu.

<img src="img/evolution_unified_6.png" width="150">

Wenn Sie alle Postfächer erfasst haben, klicken Sie auf "OK" und im Dialog für Suchordner noch einmal auf "OK".

<img src="img/evolution_unified_7.png" width="300">
<img src="img/evolution_unified_8.png" width="150">

Links in der Ordnerliste von Evolution taucht jetzt der Eintrag Suchordner auf und Sie finden darin die Unified-Inbox mit den Mails aus allen Posteingängen gemeinsam.

<img src="img/evolution_unified_9.png" width="400">

Falls es Sie stört, dass die Unified-Inbox am Ende der Accounts angezeigt wird, gehen Sie auf "Bearbeiten", "Einstellungen".

<img src="img/evolution_unified_10.png" width="150">

Und schieben Sie in der Liste der E-Mail Konten die Suchordner einfach mit der Maus an den Anfang der Liste.

<img src="img/evolution_unified_11.png" width="250">
<img src="img/evolution_unified_12.png" width="250">

Die Suchordner sind jetzt am Anfang der Accounts zu finden.

<img src="img/evolution_unified_13.png" width="200">

## Kalender einrichten

Wählen Sie in Evolution "Bearbeiten" -> "Konten" und klicken Sie auf Hinzufügen.

<img src="img/calendar_1.png" width="250">

Wählen Sie als "Art" des Kalenders "CalDav".

Legen Sie einen neuen Kalender mit folgenden Eigenschaften an:

  * Adresse: `https://mail.hs-mannheim.de/CalDAV/Kalender/`
  * Benutzername: Ihre Matrikelnummer oder zentrale Kennung
  * E-Mail: Ihre E-Mail-Adresse

<img src="img/calendar_2.png" width="250">

Nach dem Drücken auf OK vergehen ein paar Sekunden und Evolution fragt nach dem Passwort für den Account.

<img src="img/calendar_3.png" width="250">

## Adressbuch einrichten

TBD

`https://mail.hs-mannheim.de/CardDAV/$Contacts$/`

[Zurück](readme.md)