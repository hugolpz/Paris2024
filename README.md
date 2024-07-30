Source https://olympics.com/en/paris-2024/athletes

### All athletes
- All athletes list webpage : https://olympics.com/en/paris-2024/athletes
- All athletes data (12MB) : https://olympics.com/OG2024/data/MIS_Athletes~comp=OG2024~lang=ENG~functionCategory=A.json


### Individual athlete
- Individual athlete webpage : https://olympics.com/en/paris-2024/athlete/alejandra-valencia_1535420
- Individual athlete data : https://olympics.com/OG2024/data/CIS_Bio_Athlete~comp=OG2024~code=1535420~lang=ENG.json

### Download data
```bash
chmod +x ./fetch.sh 
bash ./fetch.sh
mv ./data/A.json data.js
```

### Run
```bash
chmod +x ./clean.sh
bash ./clean.sh                  # if you use bash and JQ
head -c 300 ./output-jq.json     # output preview
node ./clean.js                  # if you use nodejs
head -c 300 ./output-nodejs.json # output preview
```

### Sample

**Source:** A.json: 

```json
{
  "persons": [
    { ... },
    {
      "code": "1535420",
      "current": true,
      "TVName": "Alejandra VALENCIA",
      "name": "VALENCIA Alejandra",
      "shortName": "VALENCIA A",
      "birthDate": "1994-10-17",
      "height": 0,
      "__typename": "Person",
      "image": {
        "imageType": "HEADSHOT",
        "imageExtension": ".png",
        "imageVersion": "1"
      },
      "disciplines": [
        {
          "code": "ARC",
          "description": "Archery",
          "descriptionOrder": 0
        }
      ],
      "mainFunction": {
        "functionCode": "AA01",
        "category": "A",
        "description": "Athlete"
      },
      "organisation": {
        "code": "MEX",
        "description": "Mexico",
        "longDescription": "Mexico",
        "protocolOrder": 125,
        "descriptionOrder": 1330,
        "longDescriptionOrder": 1320
      },
      "personGender": {
        "code": "F",
        "description": "Female"
      },
      "registeredEvents": [
        {
          "code": "ARCWINDIVID-----------",
          "ifid": "8165",
          "event": {
            "code": "ARCWINDIVID-----------",
            "longDescription": "Women's Individual",
            "description": "Women's Individual",
            "order": 2
          },
          "eventEntries": [
            {
              "ee_code": "RANK_WLD",
              "ee_type": "ENTRY",
              "ee_value": "3"
            },
            {
              "ee_code": "PB",
              "ee_type": "ENTRY",
              "ee_value": "680"
            },
            {
              "ee_code": "SB",
              "ee_type": "ENTRY",
              "ee_value": "668"
            }
          ]
        },
        {
          "code": "ARCWTEAM3-------------",
          "ifid": "8165",
          "event": {
            "code": "ARCWTEAM3-------------",
            "longDescription": "Women's Team",
            "description": "Women's Team",
            "order": 4
          }
        },
        {
          "code": "ARCXTEAM2-------------",
          "ifid": "8165",
          "event": {
            "code": "ARCXTEAM2-------------",
            "longDescription": "Mixed Team",
            "description": "Mixed Team",
            "order": 5
          }
        }
      ]
    },
    { ... }
  ]
}
```

**Result:** output-nodejs.json and output-jq.js
```json
{
  "persons": [
    { ... },
    {
      "code": "1535420",
      "TVName": "Alejandra VALENCIA",
      "birthDate": "1994-10-17",
      "personGender": "Female"
      "disciplines": ["Archery"],
      "mainFunction": "Athlete",
      "organisation": "Mexico",
      "organisationCode": "MEX",
    },
    { ... }
]}```
 
