// Theme persistence
(function () {
    const saved = localStorage.getItem("theme");
    if (saved === "dark" || saved === null) {
        document.body.classList.add("dark");
    }
})();

function toggleTheme() {
    const isDark = document.body.classList.toggle("dark");
    localStorage.setItem("theme", isDark ? "dark" : "light");
}

// DateTime
function updateDateTime() {
    const el = document.getElementById("datetime");
    const now = new Date();

    const day = String(now.getDate()).padStart(2, "0");
    const month = String(now.getMonth() + 1).padStart(2, "0");
    const year = now.getFullYear();

    const hours = String(now.getHours()).padStart(2, "0");
    const minutes = String(now.getMinutes()).padStart(2, "0");
    const seconds = String(now.getSeconds()).padStart(2, "0");
    const milliseconds = String(Math.floor(now.getMilliseconds() / 10)).padStart(2, "0");

    el.textContent = `${day} ${month} ${year} ${hours}:${minutes}:${seconds}:${milliseconds}`;
}

setInterval(updateDateTime, 50);
updateDateTime();

function startFade(el) {
    el.classList.add("fading");
}

function copyCode(el) {
    const code = el.dataset.code;

    navigator.clipboard.writeText(code)
        .then(() => {
            setTimeout(() => {
                el.classList.remove("fading");
            }, 200);
        })
        .catch(err => {
            console.error("Copy failed:", err);
            el.classList.remove("fading");
        });
}