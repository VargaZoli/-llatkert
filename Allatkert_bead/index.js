import express from 'experss'
import mysql from 'mysql2';
import cors from 'cors';

const app = express();
app.use(express.json());
app.use(cors());

const db = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'allatkert',
}).promise();

app.get('/allatkert', async (req,res) =>{
    const [rows, fields] = await db.query('SELECT id, Nev, Eletkor, Fajta, Leírás FROM allatkert');
    res.send(rows);
    res.status(200).send();
    console.log("megy")
});


app.get('/allatkert/:allatkertId', async (req,res) =>{
    let allatkertId = parseInt(req.params.allatkertId);
    const [rows, fields] = await db.query('SELECT id, Nev, Eletkor, Fajta, Leírás FROM allatkert WHERE id = ?', [allatkertId]);
    if (rows.length == 1){
        res.send(rows[0]);
    } else {
        res.status(404).send({error: 'Nincs ilyen Hegy!'});
    }
});


app.post('/allatkert', async (req,res) => {
    console.log(req.body)
    const [data, fields] =await db.query('INSERT INTO allatkert (Nev, Eletkor,Fajta, Leírás) VALUES (?, ?)',[req.body.Nev, req.body.Eletkor, req.body.Fajta, req.body.Leírás])
    res.status(201).send({
        Nev: req.body.Nev,
        Eletkor: req.body.Eletkor ,
        id: data.insertId,
        Fajta: req.body.Fajta,
        Leírás:  req.body.Leírás,

    });
});


app.listen(3000);