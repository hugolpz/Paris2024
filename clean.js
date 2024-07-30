const fs = require('fs');

// Load and parse the JSON data
const rawData = fs.readFileSync('data.json');
const data = JSON.parse(rawData);

// Extract the desired fields
const result = data.persons.map(person => {
  return {
    code: person.code,
    TVName: person.TVName,
    birthDate: person.birthDate,
    personGender: person.personGender.description,
    mainFunction: person.mainFunction.description,
    disciplines: person.disciplines.map(discipline => discipline.description),
    organisation: person.organisation.code,
    organisation: person.organisation.description
  };
});

// Convert the result to a JSON string
const resultJson = JSON.stringify(result, null, 2);

// Write the result to a file
fs.writeFileSync('output-nodejs.json', resultJson);

console.log('Data written to output-nodejs.json');
