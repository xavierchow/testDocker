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


var listener = app.listen(3003, '0.0.0.0', () => {
  console.log('Express server started on port %s at %s', listener.address().port, listener.address().address);
});

