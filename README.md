Source https://olympics.com/en/paris-2024/athletes

### Run
```bash
cp A.json data.js
chmod +x clean.sh
bash ./clean.sh    # if you use bash and JQ
head -c 300 ./output-jq.json
node ./clean.js    # if you use nodejs
head -c 300 ./output-nodejs.json
```

### Download
```bash
# A.json : all athletes
curl 'https://olympics.com/OG2024/data/MIS_Athletes~comp=OG2024~lang=ENG~functionCategory=A.json' \
  -H 'sec-ch-ua: "Not/A)Brand";v="8", "Chromium";v="126"' \
  -H 'Referer: https://olympics.com/en/paris-2024/athletes' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36' \
  -H 'sec-ch-ua-platform: "Linux"'

# ParticipantsNames
curl 'https://olympics.com/OG2024/data/MIS_ParticipantNames~comp=OG2024~lang=ENG.json' \
  -H 'sec-ch-ua: "Not/A)Brand";v="8", "Chromium";v="126"' \
  -H 'Referer: https://olympics.com/en/paris-2024/athletes' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36' \
  -H 'sec-ch-ua-platform: "Linux"'

# NOC comp
curl 'https://olympics.com/OG2024/data/MIS_NOCS~comp=OG2024~lang=ENG.json' \
  -H 'sec-ch-ua: "Not/A)Brand";v="8", "Chromium";v="126"' \
  -H 'Referer: https://olympics.com/en/paris-2024/athletes' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36' \
  -H 'sec-ch-ua-platform: "Linux"'

# SportsCodes
curl 'https://olympics.com/OG2024/data/GLO_SportCodes~comp=OG2024~lang=ENG.json' \
  -H 'sec-ch-ua: "Not/A)Brand";v="8", "Chromium";v="126"' \
  -H 'Referer: https://olympics.com/en/paris-2024/athletes' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36' \
  -H 'sec-ch-ua-platform: "Linux"'

# Disciplines
curl 'https://olympics.com/OG2024/data/GLO_Disciplines~comp=OG2024~lang=ENG.json' \
  -H 'sec-ch-ua: "Not/A)Brand";v="8", "Chromium";v="126"' \
  -H 'Referer: https://olympics.com/en/paris-2024/athletes' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36' \
  -H 'sec-ch-ua-platform: "Linux"'

# H1
curl 'https://olympics.com/OG2024/data/CIS_H1~comp=OG2024.json' \
  -H 'sec-ch-ua: "Not/A)Brand";v="8", "Chromium";v="126"' \
  -H 'Referer: https://olympics.com/en/paris-2024/athletes' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36' \
  -H 'sec-ch-ua-platform: "Linux"'

# 
curl 'https://olympics.com/OG2024/assets/urls/SRM_URL_EN.json' \
  -H 'sec-ch-ua: "Not/A)Brand";v="8", "Chromium";v="126"' \
  -H 'Referer: https://olympics.com/en/paris-2024/athletes' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36' \
  -H 'sec-ch-ua-platform: "Linux"'
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
      "TVName": "Alejandra VALENCIA",
      "birthDate": "1994-10-17",
      "disciplines": ["Archery"],
      "mainFunction": "Athlete",
      "organisation": "Mexico",
      "personGender": "Female"
    },
    { ... }
]}```
 
