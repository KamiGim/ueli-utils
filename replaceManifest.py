import json
import os

configPath = 'C:/Users/SupabSaelim/ifrs9/databases/localDbConfig.json'

with open('C:/Users/SupabSaelim/ifrs9/databases/dbbackups/demo-data/manifest.json', 'r+') as manifestFile:
    manifest = json.load(manifestFile)
    with open(configPath, 'r') as configFile:
        config = json.load(configFile)
        config['databases'] = manifest['dbVersions']

    os.remove(configPath)
    with open(configPath, 'w') as configFile:
        json.dump(config, configFile, indent=4)
