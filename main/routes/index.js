var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/info', (req, res) => {
  
  res.send({info: "Hello Cisco"})
})


module.exports = router;
