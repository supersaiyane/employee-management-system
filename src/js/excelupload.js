
    document.getElementById('excelUploadForm').addEventListener('submit', function(event) {
        event.preventDefault();
        const fileInput = document.getElementById('excelFile');
        const formData = new FormData();
        formData.append('excelFile', fileInput.files[0]);

        // AJAX request to upload the file to your server
        fetch('/api/upload-excel', {
            method: 'POST',
            body: formData
        })
        .then(response => {
            // Handle response here
            console.log('File uploaded successfully');
        })
        .catch(error => {
            console.error('Error uploading file:', error);
        });
    });