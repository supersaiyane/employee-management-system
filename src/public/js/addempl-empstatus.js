document.addEventListener('DOMContentLoaded', function() {
    fetch('/api/employee-status')
        .then(response => {
            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }
            return response.json();
        })
        .then(statuses => {
            const select = document.getElementById('employeeStatus');
            if (select) {
                select.innerHTML = ''; // Clear existing options
                statuses.forEach(status => {
                    let option = new Option(status, status);
                    select.add(option);
                });
            } else {
                console.error('Select element with ID "employeeStatus" not found.');
            }
        })
        .catch(error => {
            console.error('Error fetching employee statuses:', error);
        });
});

 