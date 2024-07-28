#!/bin/bash

# Read the JSON data from data.js and process it with jq
jq '{
  persons: [
    .persons[] |
    {
      TVName: .TVName,
      birthDate: .birthDate,
      disciplines: [.disciplines[].description],
      mainFunction: .mainFunction.description,
      organisation: .organisation.description,
      personGender: .personGender.description
    }
  ]
}' data.js > output-jq.json

echo "Data written to output.json"

