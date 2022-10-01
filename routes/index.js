import fs from 'fs';
import express from 'express';

const router = express.Router();

/* GET home page. */
router.get('/', function (req, res, next) {
  const date = new Date();
  const today = date.toLocaleDateString().replace(/\//g, '');

  fs.appendFile(`./logs/${today}.txt`, `Loading - ${date.toString()} \n`, function (err) {
    if (err) throw err;
  });

  res.render('pages/index', { title: 'Text mode' });
});

router.get('/express-test', function (req, res, next) {

  res.send({ message: 'Your express is connected to react!' });
});

export default router;
