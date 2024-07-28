const fs = require('fs');

// Load and parse the JSON data
const rawData = fs.readFileSync('data.js');
const data = JSON.parse(rawData);

// Extract the desired fields
const result = data.persons.map(person => {
  return {
    TVName: person.TVName,
    birthDate: person.birthDate,
    disciplines: person.disciplines.map(discipline => discipline.description),
    mainFunction: person.mainFunction.description,
    organisation: person.organisation.description,
    personGender: person.personGender.description
  };
});

// Convert the result to a JSON string
const resultJson = JSON.stringify(result, null, 2);

// Write the result to a file
fs.writeFileSync('output-nodejs.json', resultJson);

console.log('Data written to output.json');

