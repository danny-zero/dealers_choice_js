const heroesList = require('./views/heroesList');
const profile = require('./views/profile');
const login = require('./views/login');
const notFound = require('./views/notFound');

const express = require('express');
const app = express();
const client = require('./db');
const path = require('path');
const bodyParser = require('body-parser'); //get access to the request object
app.use(bodyParser.urlencoded({extended: false})); //still not sure on the details of this line but apparently it has something to do with encoding and turning off the parser's extended option, will research this later
const cookieParser = require('cookie-parser');
app.use(cookieParser());

app.use(express.static(path.join(__dirname, "/assets")));
app.use(require('morgan')('dev'));

app.listen(process.env.PORT || 5000, () => {
    console.log("listening")
})


app.get('/login', (req, res) => {
    const name = req.cookies.name;
    if (name) {
        res.redirect('/')
    } else {
        res.send(login);
    }
})

app.get('/', async (req, res) => {
    try {
        const name = req.cookies.name;
        if (name) {
            const data = await client.query('SELECT * FROM heroes');
            const heroes = data.rows;
            // console.log(heroes)
            res.send(heroesList(heroes, name))
        } else {
            res.redirect('/login')
        }    
    } catch (error) {
        console.error(error)
    }
    
});

app.get('/:id', async (req, res) => {
    try {
        const name = req.cookies.name;
        if (name) {
            const data = await client.query('SELECT * FROM heroes JOIN details ON heroes.id = details.hero_id');
            const details = data.rows;
            console.log("details", details)
            const info = details.find(hero => hero.id == req.params.id);
            console.log("info", info)
            res.send(profile(info))
        } else {
            res.redirect('/login')
        }    
    } catch (error) {
        console.error("here's the error", error)
        res.send(notFound)
    } 
})




//POST REQUESTS
app.post("/login", (req, res) => {
    res.cookie('name', req.body.name) //sends cookie to the browser after form is submitted
    res.redirect('/')
})

//LOGOUT, CLEAR THE COOKIE AND REDIRECT TO LOGIN PAGE
app.post('/logout', (req, res) => {
    res.clearCookie('name');
    res.redirect('/login')
})

