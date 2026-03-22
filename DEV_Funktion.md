# DEV Funktion — PhantomBite Encounter

## Zweck
MES-basierter Encounter Mod der benutzerdefinierte Stationen, Wracks und Begegnungen auf Planeten spawnt. Nutzt das Modular Encounters System (MES) als Basis.

## Abhängigkeit
Benötigt **Modular Encounters System (MES)** auf Steam Workshop.

## Namespace
Alle internen SubtypeIds nutzen den Prefix `PB-`:
- `PB-SpawnGroup-*`
- `PB-Behavior-*`
- `PB-Trigger-*`
- `PB-Action-*`

## Kategorien

| Kategorie | Datei | Beschreibung |
|-----------|-------|--------------|
| Militär | SpawnGroups-Militaer.sbc | Militärische Stationen |
| Militär (Gefroren) | SpawnGroups-FrozenMilitaer.sbc | Eingefrorene Militär-Encounter |
| Lager | SpawnGroups-Lager.sbc | Lager und Depots |
| Piraten | SpawnGroups-Piraten.sbc | Piraten-Stützpunkte |
| Wracks | SpawnGroups-Wracks.sbc | Schiffswracks |
| Gefroren | SpawnGroups-Frozen.sbc | Eingefrorene Fahrzeuge |
| Verlassene Stationen | SpawnGroups-VerlasseneStationen.sbc | Verlassene Anlagen |
| Alien Artefakt | SpawnGroups-AlienArtefact.sbc | Alien-Strukturen |
| Stargates | SpawnGroups-Stargates.sbc | Stargate Strukturen |
| SPRT | SpawnGroups-SPRT.sbc | Space Pirates |

## Stationen (P1–P30)

| ID | Name | Typ |
|----|------|-----|
| P1 | Versorgungsposten | Lager |
| P2 | Lagerdepot | Lager |
| P3 | Fertigungsanlage | Lager |
| P4 | Verarbeitungswerk | Lager |
| P5 | Prospektion | Lager |
| P6 | Erzverarbeitungsanlage | Lager |
| P7 | Feldforschungsposten | Lager |
| P8 | Versandplattform | Lager |
| P9 | Regionale Hauptquartier | Militär |
| P10 | Militärkaserne | Militär |
| P11 | Vorposten der Vorhut | Militär |
| P12 | Militärwachturm | Militär |
| P13 | Piraten-Relaisposten | Piraten |
| P14 | Schrottplatz | Piraten |
| P15 | Piratenfestung | Piraten |
| P16 | Eingefrorener Rover | Gefroren |
| P17 | Verrosteter Rover | Wrack |
| P18 | Eingefrorener Shuttle | Gefroren |
| P19 | Verrosteter Shuttle | Wrack |
| P20 | Eingefrorener Erkundungsfahrer | Gefroren |
| P21 | Verrosteter Erkundungsfahrer | Wrack |
| P22 | Eingefrorenes Kolonialschiff | Gefroren |
| P23 | Verrostetes Kolonialschiff | Wrack |
| P24 | Alien 1 | Alien |
| P25 | Alien 2 | Alien |
| P26 | Frachter Wrack | Wrack |
| P26b | Frachter Wrack (Gefroren) | Gefroren |
| P27 | Handelskurier Wrack | Wrack |
| P28 | Logistikposten | Lager |
| P29 | Zerstörter Hopper | Wrack |
| P30 | Verlassenes Gehöft | Verlassen |
| — | Stargate | Sonder |

## Dateistruktur
```
Phantombite_Encounter/
├── Data/
│   ├── Behavior/                    (RivalAI Behaviors pro Station)
│   │   └── Triggers/Station/        (Trigger-Definitionen)
│   ├── Definitions/
│   │   └── SpawnConditions-Basis.sbc
│   └── Spawning/
│       ├── Loot/                    (ContainerTypes + LootProfiles)
│       ├── Manipulations/           (Grid-Manipulationen beim Spawn)
│       ├── Prefabs/Station/         (Prefab-Referenzen)
│       └── SpawnGroups/             (SpawnGroup-Definitionen)
└── SpawnBefehle_alle_Stationen.txt  (Admin Spawn-Befehle Referenz)
```
