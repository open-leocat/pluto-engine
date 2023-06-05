**Grundprinzipien:**

1. Einfachheit: Die Software sollte minimalistisch sein, mit einer klaren und eleganten Codebasis. Das Motto lautet "Weniger ist mehr".

2. KISS-Prinzip (Keep it Simple, Stupid): Die Software sollte einfach zu verstehen und zu warten sein.

3. Modularität: Die Software sollte aus einzelnen, unabhängigen Komponenten bestehen, die separat entwickelt und kombiniert werden können.

4. Minimale externe Abhängigkeiten: Es sollte auf externe Bibliotheken und Frameworks verzichtet werden, um Komplexität und potenzielle Fehlerquellen zu minimieren.

5. Fokus auf Kernfunktionen: Die Software sollte sich auf grundlegende Funktionen konzentrieren und unnötige Funktionen vermeiden.

6. Gute Dokumentation: Die Software sollte gut dokumentiert sein, wobei die Codebasis selbst so verständlich sein sollte, dass sie auch ohne zusätzliche Dokumentation grundlegend nachvollziehbar ist.

---

**Dateilayout:**

- Kommentar und Erklärung
- Header
- Macros
- Typen
- Funktionen
- Globale Variablen (sollten vermieden werden)
- main-Funktion

---

**C:**

- Benutze C11 ohne Extensions
- Trenne Deklarationen und Code voneinander.
- Kommentare sollten in der Form /* */ verwendet werden, nicht mit //
- System-/libc-Header sollten zuerst in alphabetischer Reihenfolge eingefügt werden.
- Füge gegebenenfalls Kommentare hinzu, um die Reihenfolge zu erklären.
- Lokale Header sollten nach einer Leerzeile eingefügt werden.
- Versuche, zyklische Abhängigkeiten zwischen Headern zu vermeiden. Stelle sicher, dass sie nur dort und zu dem Zeitpunkt eingefügt werden, wo sie benötigt werden.
- Vermeide komplexe Kontrollflüsse: Keine Verwendung von goto, setjmp, longjmp oder Rekursion.
- Vermeide die Verwendung von typedef.
- Verwende Enums für Rückgabewerte bei Fehlern.
- Vermeide die Verwendung von type_t-Namen.
- Verwende überall snake_case.
- Verwende C99 bool anstelle von int.
- Halte dich an eine maximale Zeilenlänge von 80 Zeichen.
- Sei pedantisch und kompiliere immer mit den Optionen "-Wall -Werror -pedantic"
- Vermeide die Verwendung des Heaps: Versuche, den Heap so wenig wie möglich zu nutzen, um Memory Leaks, Heap Overflows, Heap Exhaustions, die Verwendung von bereits freigegebenem Speicher und ähnliches zu vermeiden.
- Halte Funktionen so kurz wie möglich: Eine Funktion sollte nur eine Aktion ausführen und normalerweise nicht länger als 40 Zeilen sein.
- Überprüfe Rückgabewerte: Wenn eine Funktion keinen Rückgabewert hat, caste ihn zu void.
- Vermeide magische Zahlen und verwende stattdessen benannte Konstanten, um die Lesbarkeit zu verbessern.
- Schreibe lesbaren Code, indem du aussagekräftige Variablen- und Funktionennamen verwendest.
- Verwende Klammern (geschweifte Klammern) auch bei Einzeilanweisungen, um die Konsistenz im Code zu wahren und potenzielle Fehler durch vergessene Klammern zu vermeiden.

---
