var express = require('express');
var router = express.Router();
var service = require('../service/comment')


router.get('/by-music/:id', async function (req, res) {
  const list = await service.selectAll(req.params.id)
  res.send({
    code: 200,
    data: list
  })
});


router.post('/', async function (req, res) {
  const list = await service.insert(req.body)
  res.send({
    code: list ? 200 : 500,
  })
})

module.exports = router;
