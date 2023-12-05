document.addEventListener('DOMContentLoaded', function() {
    fetch('/api/employee-status')
        .then(response => {
            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }
            return response.json();
        })
        .then(statuses => {
            const input = document.getElementById('employeeStatus');
            const autocompleteList = document.getElementById('autocompleteList');

            input.addEventListener('input', function() {
                const value = this.value;
                // Clear existing options
                autocompleteList.innerHTML = ''; 

                if (!value) return false;

                statuses.forEach(status => {
                    if (status.substr(0, value.length).toUpperCase() == value.toUpperCase()) {
                        let item = document.createElement('div');
                        item.innerHTML = "<strong>" + status.substr(0, value.length) + "</strong>";
                        item.innerHTML += status.substr(value.length);
                        item.addEventListener('click', function() {
                            input.value = status;
                            autocompleteList.innerHTML = '';
                        });
                        autocompleteList.appendChild(item);
                    }
                });
            });
        })
        .catch(error => {
            console.error('Error fetching employee statuses:', error);
        });
});
