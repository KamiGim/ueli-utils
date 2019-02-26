cd "C:\Users\SupabSaelim\ifrs9\databases"
((Get-Content -path ./localDbConfig.json -Raw) -replace 'latest','1.0.0') | Set-Content -Path ./localDbConfig.json
python dbrestore.py -r drop-all
python dbinstall.py
python dbrestore.py -r demo-data-1.0
python dblicense.py -f dev-0303
((Get-Content -path ./localDbConfig.json -Raw) -replace '1.0.0','latest') | Set-Content -Path ./localDbConfig.json
python dbinstall.py
cmd
