#!/bin/bash

# Array of URLs
urls=(
  "https://olympics.com/OG2024/data/MIS_Athletes~comp=OG2024~lang=ENG~functionCategory=A.json"
  "https://olympics.com/OG2024/data/MIS_ParticipantNames~comp=OG2024~lang=ENG.json"
  "https://olympics.com/OG2024/data/MIS_NOCS~comp=OG2024~lang=ENG.json"
  "https://olympics.com/OG2024/data/GLO_SportCodes~comp=OG2024~lang=ENG.json"
  "https://olympics.com/OG2024/data/GLO_Disciplines~comp=OG2024~lang=ENG.json"
  "https://olympics.com/OG2024/data/CIS_H1~comp=OG2024.json"
  "https://olympics.com/OG2024/assets/urls/SRM_URL_EN.json"
)

# Headers
headers=(
  -H 'sec-ch-ua: "Not/A)Brand";v="8", "Chromium";v="126"'
  -H 'Referer: https://olympics.com/en/paris-2024/athletes'
  -H 'sec-ch-ua-mobile: ?0'
  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36'
  -H 'sec-ch-ua-platform: "Linux"'
)

# Create the data directory if it doesn't exist
mkdir -p ./data

# Loop over URLs
for url in "${urls[@]}"; do
  # Extract the filename from the URL
  filename=$(basename "$url")
  
  # Fetch the URL and save to the data folder
  curl "$url" "${headers[@]}" -o "./data/$filename"
done

