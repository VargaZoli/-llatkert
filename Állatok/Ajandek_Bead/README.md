- telepétés: 
    Új mappában:
        powershell-ben: következő parancsok : 
            npm init
            npm i express mysql2 
            ui: elég végig enterezni a powershellben a sorokat, semmilyen specifikus tevékenyésget nem kell végezni
    - SQL Export nagyon fontos anékül nincs meg az adatszerkezetünk
    - package.json file-ban   "type": "module", irja be ez fontos lesz a program szempontjából

- Kódólás:
    - Ha ezzel megvagyunk egy index.js készítsünk a mappában, itt fogjuk a kódot megírni
    - Index.js kód fontos lépések: 
        -   import express from 'express';
        -   import mysql from 'mysql2';
        -   app.listen(3000) = ezzel érhetjük el a böngészőben a http://localhost:3000/
        -   ezek után a különbőző methodúsok pl: GET, POST, DELTE, PUT és ezekkel a megfelelő status kód pl: 200(OK), 201(Created), 204(No Content), 404(Not Found) létrehozzása, majd tesztelése

- Adatformátum:
    .json várjuk adatokat mellyeknek van: Id, Nev, Ar 

