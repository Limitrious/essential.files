function updateDateTime() {
    const dateTimeElement = document.getElementById('datetime');
    const now = new Date();

    const day = String(now.getDate()).padStart(2, '0');
    const month = String(now.getMonth() + 1).padStart(2, '0');
    const year = now.getFullYear();

    const hours = String(now.getHours()).padStart(2, '0');
    const minutes = String(now.getMinutes()).padStart(2, '0');
    const seconds = String(now.getSeconds()).padStart(2, '0');
    const milliseconds = String(Math.floor(now.getMilliseconds() / 10)).padStart(2, '0');

    const formattedDate = `${day} ${month} ${year}`;
    const formattedTime = `${hours}:${minutes}:${seconds}:${milliseconds}`;

    dateTimeElement.textContent = `${formattedDate} ${formattedTime}`;
}

setInterval(updateDateTime, 50);

updateDateTime();
