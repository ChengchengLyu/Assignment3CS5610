var query = require('../mysql/query')

async function selectAll(music_id) {
  return await query({
    sql: `
      SELECT * FROM t_comment
      WHERE music_id=?
      ORDER BY id DESC
    `,
    params: [music_id]
  })
}

async function insert({ user_id, name, content, music_id }) {
  return await query({
    sql: 'INSERT INTO `t_comment`(`user_id`,`name`, `content`, `music_id`) VALUES (?,?,?,?)',
    params: [user_id, name, content, music_id]
  })
}

module.exports = {
  selectAll,
  insert
}
