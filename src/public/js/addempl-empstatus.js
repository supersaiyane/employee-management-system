    document.getElementById('employeeStatus').addEventListener('click', function() {
        fetch('/api/employee-status')
            .then(response => response.json())
            .then(data => {
                // Assuming the data is an array of status objects
                const select = document.getElementById('employeeStatus');
                select.innerHTML = ''; // Clear existing options
                data.forEach(item => {
                    let option = new Option(item.status, item.status);
                    select.add(option);
                });
            })
            .catch(error => {
                console.error('Error fetching employee status:', error);
            });
    });
