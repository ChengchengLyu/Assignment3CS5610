var query = require('../mysql/query')

async function selectAll() {
  return await query({
    sql: 'SELECT * FROM `t_singer` ORDER BY id DESC',
  })
}

async function selectOne(id) {
  return await query({
    sql: 'SELECT * FROM `t_singer` WHERE id=?',
    params: [id]
  })
}
async function update ({id, name, singer_desc}) {
  return await query({
    sql: 'UPDATE t_singer set singer_desc=?,name=? where id=?',
    params: [singer_desc, name, id]
  })
}
async function insert({ name, singer_desc, storage }) {
  return await query({
    sql: 'INSERT INTO `t_singer`(`name`, `singer_desc`, `storage`) VALUES (?,?,?)',
    params: [name, singer_desc, storage]
  })
}

module.exports = {
  selectAll,
  selectOne,
  insert,
  update
}
