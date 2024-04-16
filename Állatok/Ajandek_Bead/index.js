import express from 'express';
import mysql from 'mysql2';

const app = express();
app.use(express.json());

const db = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'ajandek',
}).promise();

app.get('/ajandek', async (req,res) =>{
    const [rows, fields] = await db.query('SELECT Id, Nev, Ar FROM ajandek');
    res.send(rows);
    res.status(200).send();
});

app.get('/ajandek/:ajandekId', async (req,res) =>{
    let ajandekId = parseInt(req.params.ajandekId);
    const [rows, fields] = await db.query('SELECT Id, Nev, Ar FROM ajandek WHERE id = ?', [ajandekId]);
    if (rows.length == 1){
        res.send(rows[0]);
    } else {
        res.status(404).send({error: 'Nincs ilyen Ajándék!'});
    }
});


app.post('/ajandek', async (req,res) => {
    console.log(req.body)
    const [data, fields] =await db.query('INSERT INTO ajandek (Nev, Ar) VALUES (?, ?)',[req.body.Nev, req.body.Ar])
    res.status(201).send({
        Nev: req.body.Nev,
        Ar: req.body.Ar ,
        Id: data.insertId
    });
});


app.delete('/ajandek/:ajandekId', async (req, res) => {
    const id = req.params.ajandekId;
    await db.query('DELETE FROM ajandek WHERE id = ?', [id]);
    res.status(204).send("Item sikeresen törölve");
});

app.put('/ajandek/:ajandekId', async (req, res) =>{
    let id = parseInt(req.params.ajandekId);
    await db.query('UPDATE ajandek SET Nev = ?,  Ar = ? WHERE Id = ?',[req.body.Nev, req.body.Ar, id]);
    res.status(200).send("SIkeresn updatelve")
});



app.listen(3000);