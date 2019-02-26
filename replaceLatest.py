import json
import os

configPath = 'C:/Users/SupabSaelim/ifrs9/databases/localDbConfig.json'

with open(configPath, 'r') as configFile:
    config = json.load(configFile)
    for db in config['databases']:
        config['databases'][db] = 'latest'

os.remove(configPath)
with open(configPath, 'w') as configFile:
    json.dump(config, configFile, indent=4)
