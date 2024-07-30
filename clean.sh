#!/bin/bash

# Read the JSON data from data.js and process it with jq
jq '[
    .persons[] |
    {
      code: .code,
      TVName: .TVName,
      birthDate: .birthDate,
      personGender: .personGender.description,
      mainFunction: .mainFunction.description,
      disciplines: [.disciplines[].description],
      organisationCode: .organisation.code,
      organisation: .organisation.description,
    }
  ]' data.json > output-jq.json

echo "Data written to output-jq.json"
