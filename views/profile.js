module.exports = hero => `<!DOCTYPE html>
        ${console.log("hero", hero)}
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>${hero.codename}</title>
            <link rel="stylesheet" href="style.css">
        </head>
        <body>
            <div class="wrapper">
                <div class="left">
                    <img class="profile-pic" src="${hero.img}" />
                </div>
                <div class="right">
                    <div class="info">
                        <h1 class="hero-codename">${hero.codename}</h1>
                    </br>
                        <p><strong>First Name: </strong>${hero.first_name}</p>
                        <p><strong>Last Name: </strong>${hero.last_name}</p>
                    </br>
                        <h3>Powers/Abilities:</h3>
                        <div class="info-data">
                            <div class="data">
                                <p>${hero.powers}</p>
                            </div>
                        </div>
                    </br>
                        <h3>Bio:</h3>
                        <div class="info-data">
                            <div class="data">
                                <p>${hero.bio}</p>
                            </div>
                        </div>
                        </br>
                        <a class="go-back-link" href="/"><div class="go-back">
                    <h3>&larr;</h3>
                    <h4>Go Back</h4>
                    </div></a>
                    </div>
                </div>
            </div>
        </body>
        </html>`