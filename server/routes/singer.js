var express = require('express');
var router = express.Router();
var service = require('../service/singer')


router.get('/', async function (req, res) {
  const list = await service.selectAll()
  res.send({
    code: 200,
    data: list
  })
});

router.post('/', async function (req, res) {
  const result = await service.insert(req.body)
  if (result) {
    res.send({
      code: 200,
    })
  } else {
    res.send({
      code: 500,
      msg: 'error'
    })
  }
});


router.get('/:id', async function (req, res) {
  const id = req.params.id
  const result = await service.selectOne(id)
  res.send({
    code: 200,
    data: result[0]
  })
});


 router.put('/', async function (req, res) {
  const result = await service.update(req.body)
  res.send({
    code: result ? 200 : 500,
  })
});

module.exports = router;
