var query = require('../mysql/query')

async function selectOneByName(name) {
  return await query({
    sql: 'SELECT * FROM `t_user` WHERE name=?',
    params: [name]
  })
}

async function selectOneByNameAndPwd(name, pwd) {
  return await query({
    sql: 'SELECT * FROM `t_user` WHERE name=? and password=?',
    params: [name, pwd]
  })
}
async function insert(name, pwd) {
  return await query({
    sql: 'INSERT INTO `t_user`(`name`, `password`) VALUES (?,?)',
    params: [name, pwd]
  })
}
async function updateShoucang({ id, shoucang }) {
  return await query({
    sql: 'UPDATE `t_user` set shoucang=? where id=?',
    params: [id, shoucang]
  })
}

module.exports = {
  selectOneByNameAndPwd,
  selectOneByName,
  insert,
  updateShoucang
}
