// Fetch data from the REST Countries API
fetch("https://restcountries.com/v3.1/all")
  .then(response => response.json())
  .then(data => {
    // Iterate through each country and log its flag
    data.forEach(country => {
      const flags = country.flags;
      if (flags) {
        console.log(`Country: ${country.name.common}, Flag: ${flags.png}`);
      }
    });
  })
  .catch(error => console.error("Error fetching data:", error));
