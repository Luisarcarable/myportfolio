// Dark/Light Theme Toggle with LocalStorage
const themeToggle = document.getElementById("theme-toggle");
const currentTheme = localStorage.getItem("theme");

if (currentTheme === "dark") {
  document.body.classList.add("dark");
  themeToggle.textContent = "☀️";
}

themeToggle.addEventListener("click", () => {
  document.body.classList.toggle("dark");
  const theme = document.body.classList.contains("dark") ? "dark" : "light";
  localStorage.setItem("theme", theme);
  themeToggle.textContent = theme === "dark" ? "☀️" : "🌙";
});

// Year in footer
document.getElementById("year").textContent = new Date().getFullYear();

// Contact form mock
document.getElementById("contact-form").addEventListener("submit", (e) => {
  e.preventDefault();
  alert("Your message has been sent! (Demo only)");
});
