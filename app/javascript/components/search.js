const inputField = document.querySelector('#filterInput');
const results = document.querySelectorAll('.cards .card-blue');

inputField.addEventListener('input', e => {
  const searchTerm = e.target.value.toLowerCase();
  const resultsArray = Array.from(results); // convert NodeList to array
  const filteredResults = resultsArray.filter(result => result.querySelector('.car_model').textContent.toLowerCase().includes(searchTerm));
  resultsArray.forEach(result => result.style.display = 'none');
  filteredResults.forEach(result => result.style.display = 'block');
});
