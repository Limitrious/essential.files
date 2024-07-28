document.getElementById('downloadButton').addEventListener('click', function() {
    fetch('https://raw.githubusercontent.com/Qiasfah/Null-Movement-Script/master/Null%20Movement.ahk')
        .then(response => response.blob())
        .then(blob => {
            const url = window.URL.createObjectURL(blob);
            const a = document.createElement('a');
            a.href = url;
            a.download = 'Null_Movement.ahk';
            document.body.appendChild(a);
            a.click();
            a.remove();
            window.URL.revokeObjectURL(url);
        })
        .catch(error => console.error('Error downloading file:', error));
});
