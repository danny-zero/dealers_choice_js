module.exports = (heroes, name) => `<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Justice League Archive</title>
<link rel="stylesheet" href="/style.css" />
</head>
<body>
<div class="welcome-container">
    <h1 class="archive-welcome">Welcome, ${name}</h1>
    <form action="/logout" method="post" class="logout-form">
        <button type="submit">Logout</button>
    </form>
</div>
<div class="heroes-list">
    ${heroes.map((hero) => `
    <div class="hero-item">
    <a href="/${hero.id}">${hero.codename}</a></br>
    </div>
    `)}</div>
</body>
</html>`;