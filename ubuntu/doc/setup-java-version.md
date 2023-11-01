# Java-Version auswählen

Es werden mehrere Java-Versionen installiert. Sie können jederzeit zwischen diesen Versionen umschalten. Führen Sie dazu das folgende Kommando aus:

```console
$ sudo update-alternatives --config java
There are 3 choices for the alternative java (providing /usr/bin/java).

  Selection    Path                                            Priority   Status
------------------------------------------------------------
  0  /usr/lib/jvm/java-15-openjdk-amd64/bin/java      1511      auto mode
  1  /usr/lib/jvm/java-11-openjdk-amd64/bin/java      1111      manual mode
  2  /usr/lib/jvm/java-15-openjdk-amd64/bin/java      1511      manual mode
* 3  /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java   1081      manual mode

Press <enter> to keep the current choice[*], or type selection number:
```

Geben Sie die Nummer der gewünschten Java-Version ein und drücken Sie `ENTER`.

[Zurück](readme.md)
