var express = require('express');
const UserSystem = require('../bin/services/UserSystem');
var router = express.Router();

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index', {
    title: 'Express'
  });
});

router.get('/info', async (req, res, next) => {
  const {
    getInfo
  } = UserSystem();
  const result = await getInfo();
  res.send(result);
});

router.get('/info/save', (req, res, next) => {
  const {
    saveInfo
  } = UserSystem();
  res.send(saveInfo());
});

module.exports = router;