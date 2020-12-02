var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  const app = req.app;
  res.render('index', {
    title: 'dockerExpressTest'
    , env: app.get('env')
    , jEnv: app.jEnv
  });
});

module.exports = router;
