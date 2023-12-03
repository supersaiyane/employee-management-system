document.getElementById('fetchEmployeeDetails').addEventListener('click', function() {
    const employeeId = document.getElementById('employeeIdInput').value;
    // AJAX request to your server to fetch employee details
    // Example using fetch API (modify as per your server's API)
    fetch('/api/employee/' + employeeId) // Adjust the URL as needed
        .then(response => response.json())
        .then(data => {
            // Assuming 'data' is the object containing employee details
            // Populate the fields in the accordion with the fetched data
            document.getElementById('employeeName').textContent = data.name; // Adjust field names as per your data structure
            document.getElementById('employeeId').textContent = data.id;
            document.getElementById('joiningDate').textContent = data.joinDate;
            // ... and so on for other fields
        })
        .catch(error => {
            console.error('Error fetching employee details:', error);
        });
});