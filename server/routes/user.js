var express = require('express');
var router = express.Router();
var service = require('../service/user')


router.post('/login', async function (req, res) {
  let nList = await service.selectOneByName(req.body.name)

  if (!nList.length) {
    await service.insert(req.body.name, req.body.password)
  }

  let list = await service.selectOneByNameAndPwd(req.body.name, req.body.password)

  res.send({
    code: list.length ? 200 : 500,
    data: list[0]
  })
});

router.post('/shoucang', async function (req, res) {
  await service.updateShoucang(req.body)
  res.send({
    code: 200
  })
});


module.exports = router;
