const functions = require("firebase-functions");
const admin = require("firebase-admin");

admin.initializeApp();

const database = admin.database();

const express = require('express');
const bodyParser = require('body-parser');

const app = express();

app.use(bodyParser.json());

app.use('/calculate', (req, res, next) => {
    const body = req.body;
    const equation = body.equation;
    let result = eval(equation);
    let response = {
        equation: equation,
        result: result
    };
    try {
        database.ref('history').push(
            response
        );
    } catch (err) {
        console.log(error);
    }
    return res.send(response);
});

exports.webApi = functions.https.onRequest(app);