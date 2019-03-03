cd "C:\Users\SupabSaelim\ifrs9\databases"
# ((Get-Content -path ./localDbConfig.json -Raw) -replace 'latest','1.0.0') | Set-Content -Path ./localDbConfig.json
python C:\Users\SupabSaelim\Desktop\ueli_utils\replaceManifest.py
python dbrestore.py -r drop-all
python dbinstall.py
python dbrestore.py -f -r demo-data
python dblicense.py -f dev-0304
# ((Get-Content -path ./localDbConfig.json -Raw) -replace '1.0.0','latest') | Set-Content -Path ./localDbConfig.json
python C:\Users\SupabSaelim\Desktop\ueli_utils\replaceLatest.py
python dbinstall.py
cmd
