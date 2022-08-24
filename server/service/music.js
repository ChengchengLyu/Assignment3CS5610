var query = require('../mysql/query')

async function selectAll() {
  return await query({
    sql: `
      SELECT m.id as id, m.name as name, m.storage as cover, s.name as singer_name, s.id as singer_id
      FROM t_music m
      LEFT JOIN t_singer s
      ON m.singer_id=s.id
      ORDER BY m.id DESC
    `
  })
}

async function selectRandom() {
  return await query({
    sql: `
      SELECT m.id as id, m.name as name, m.time as time, m.storage as cover, m.lyric as lyric, s.name as singer_name, s.id as singer_id
      FROM t_music m
      LEFT JOIN t_singer s
      ON m.singer_id=s.id
      order by rand()
      LIMIT 10
    `
  })
}

async function selectAllBySingerId (id) {
  return await query({
    sql: `
      SELECT m.id as id, m.name as name, m.storage as cover, s.name as singer_name, s.id as singer_id
      FROM t_music m
      LEFT JOIN t_singer s
      ON m.singer_id=s.id
      where s.id=?
      ORDER BY m.id
    `,
    params: [id]
  })
}

async function selectMusicByName (name) {
  return await query({
    sql: `
      SELECT m.id as id, m.name as name, m.storage as cover, s.name as singer_name, s.id as singer_id
      FROM t_music m
      LEFT JOIN t_singer s
      ON m.singer_id=s.id
      WHERE m.name like ?
      ORDER BY m.id DESC
    `,
    params:[`%${name}%`]
  })
}

async function selectOne(id) {
  return await query({
    sql: `
      SELECT m.id as id, m.name as name, m.time as time, m.storage as cover, m.lyric as lyric, s.name as singer_name, s.id as singer_id
      FROM t_music m
      LEFT JOIN t_singer s
      ON m.singer_id=s.id
      where m.id=?
      ORDER BY m.id
    `,
    params: [id]
  })
}

async function update ({id, name, lyric}) {
  return await query({
    sql: 'UPDATE t_music set lyric=?,name=? where id=?',
    params: [lyric, name, id]
  })
}

async function insert({ name, time, storage, singer_id }) {
  return await query({
    sql: 'INSERT INTO `t_music`(`name`, `time`, `singer_id`, `storage`) VALUES (?,?,?,?)',
    params: [name, time, storage, singer_id]
  })
}

module.exports = {
  selectAll,
  selectRandom,
  selectAllBySingerId,
  selectOne,
  insert,
  selectMusicByName,
  update
}
