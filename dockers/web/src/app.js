'use strict';

var express = require('express')
var app = express()

app.post('/web/context/:txnId', function (req, res) {

  const result = {
    data: { id: req.params.txnId }
  };
  res.json(result);
})

app.post('/web/action/:txnId', function (req, res) {

  const result = {
    data: { id: req.params.txnId }
  };
  res.json(result);
})


app.listen(3003, '0.0.0.0', () => {
  console.log('Mock Web listening on port 3003');
})

