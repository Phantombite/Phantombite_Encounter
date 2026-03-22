# Konvertiere alle SpawnGroup XML-Dateien - direkter Text-basierte Konvertierung

function ConvertSpawnGroupTextBased {
    param([string]$filePath)
    
    $content = Get-Content $filePath -Raw
    
    # Ersetze gesamte wrapper structure
    $content = $content -replace '  <SpawnGroups>', '  <EntityComponents>'
    $content = $content -replace '  </SpawnGroups>', '  </EntityComponents>'
    
    # Ersetze SpawnGroup tags
    $content = $content -replace '    <SpawnGroup>', '    <EntityComponent xsi:type="MyObjectBuilder_InventoryComponentDefinition">'
    $content = $content -replace '    </SpawnGroup>', '    </EntityComponent>'
    
    # Ersetze TypeId für die EntityComponent
    $content = $content -replace '<TypeId>SpawnGroupDefinition</TypeId>', '<TypeId>Inventory</TypeId>'
    
    # Entferne die alten nicht-MES-konformen Tags
    $content = $content -replace "      <IsPirate>.*?</IsPirate>\r?\n", ''
    $content = $content -replace "      <Frequency>.*?</Frequency>\r?\n", ''
    $content = $content -replace "      <Prefabs>.*?</Prefabs>\r?\n", ''
    
    Set-Content $filePath $content -Encoding UTF8
    Write-Host ("Konvertiert: " + (Split-Path $filePath -Leaf))
}

$spawnGroupPath = "c:\Users\phill\AppData\Roaming\SpaceEngineers\Mods\SpaceEncounter\Data\Spawning\SpawnGroups"

Write-Host "Konvertiere SpawnGroup-Dateien zu MES EntityComponent-Format..."

Get-ChildItem "$spawnGroupPath\SpawnGroups-*.sbc" | ForEach-Object {
    ConvertSpawnGroupTextBased $_.FullName
}

Write-Host "Konvertierung abgeschlossen!"
