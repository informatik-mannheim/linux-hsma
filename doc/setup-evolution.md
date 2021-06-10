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