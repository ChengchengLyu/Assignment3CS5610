var express = require('express');
var router = express.Router();
var service = require('../service/music')


router.get('/', async function (req, res) {
  const list = await service.selectAll()
  res.send({
    code: 200,
    data: list
  })
});


router.get('/today', async function (req, res) {
  const list = await service.selectRandom()
  res.send({
    code: 200,
    data: list
  })
});


 router.get('/search/:name', async function (req, res) {
  const list = await service.selectMusicByName(req.params.name)
  res.send({
    code: 200,
    data: list
  })
});


router.get('/:id', async function (req, res) {
  const id = req.params.id
  const result = await service.selectOne(id)
  res.send({
    code: 200,
    data: result[0]
  })
});


router.get('/by-singer/:id', async function (req, res) {
  const id = req.params.id
  const result = await service.selectAllBySingerId(id)
  res.send({
    code: 200,
    data: result
  })
});


router.put('/', async function (req, res) {
  const result = await service.update(req.body)
  res.send({
    code: result ? 200 : 500,
  })
});

module.exports = router;
