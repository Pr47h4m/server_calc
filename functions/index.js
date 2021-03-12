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
    const num1 = body.num1;
    const num2 = body.num2;
    const op = body.op;
    let result;
    if (op === "+") {
        result = num1 + num2;
    } else if (op === "-") {
        result = num1 - num2;
    } else if (op === "*") {
        result = num1 * num2;
    } else if (op === "/") {
        result = num1 / num2;
    }
    let response = {
        num1: num1,
        num2: num2,
        op: op,
        result: result
    };
    try {
        var timestamp = new Date();
        database.ref('history').push(
            response
        );
    } catch (err) {
        console.log(error);
    }
    return res.send(response);
});

exports.webApi = functions.https.onRequest(app);