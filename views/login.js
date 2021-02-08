module.exports = `<!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Justice League Archive</title>
            <link rel="stylesheet" href="/style.css">
        </head>
        <body>
            <container>
                <div class="login-header"><h1>Justice League Archive</h1></div>
                <div class="login-container">
                    <form action="/login" method="post" class="login-form">
                        <label for="name">Enter your name:</label>
                        <input type="text" id="name" name="name" autocomplete="off" />
                        <button type="submit">Submit</button>
                    </form>
                </div>
            </container>
        </body>
        </html>`