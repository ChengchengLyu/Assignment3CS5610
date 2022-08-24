import React, { useState, useEffect } from 'react'
import './music-info.css';
import axios from 'axios'
import Head from '../../components/head/head'

const MusicInfo = () => {
  const [music, setMusic] = useState({});
  const [userInfo, setUserInfo] = useState({});
  const [commentList, setCommentList] = useState([]);
  const [text, setText] = useState('');

  useEffect(() => {
    fetchMusic()
    fetchCommentList()
    const uinfo = window.localStorage.getItem('userInfo')
    if (uinfo) {
      const uu =JSON.parse(uinfo)
      setUserInfo(uu)
      setUserInfo({
        ...uu,
        save: uu.save ? JSON.parse(uu.save) : []
      })
    }
  }, [])

  const fetchMusic = async () => {
    const id = window.location.hash.split('=')[1]
    const { data } = await axios.get(
      `http://localhost:3000/music/${id}`
    )
    if (data.code === 200) {
      setMusic(data.data)
    }
  }
  const fetchCommentList = async () => {
    const id = window.location.hash.split('=')[1]
    const { data } = await axios.get(
      `http://localhost:3000/comment/by-music/${id}`
    )
    if (data.code === 200) {
      setCommentList(data.data || [])
    }
  }

  const handleSubmit = async () => {
    if (!userInfo.id) {
      return
    }
    const id = window.location.hash.split('=')[1]
    await axios.post('http://localhost:3000/comment/', {
      music_id: id,
      content: text,
      name: userInfo.name,
      user_id: userInfo.id,
    })
    setText('')
    fetchCommentList()
  }


  const cancel = () => {
    const index = userInfo.save.indexOf(music.id)
    userInfo.save.splice(index, 1)
    updateSave()
  }

  const save = () => {
    userInfo.save.push(music.id)
    updateSave()
  }

  const updateSave = async () => {
    localStorage.setItem('userInfo', JSON.stringify({
      ...userInfo,
      save: JSON.stringify(userInfo.save)
    }))
    await axios.post(
      `http://localhost:3000/user/save`,
      {
        id: userInfo.id,
        save: JSON.stringify(userInfo.save)
      }
    )
    window.location.reload()
  }

  return (
    <div className='page'>
      <Head></Head>
      <div className="music-info">
        <div className="info">
          <img src={music.cover} alt="" />
          <div>
            <h1>{music.name}</h1>
            <p>{music.singer_name}</p>
            <p className="desc">{music.time}</p>
            {
              userInfo.id ?
                <div>
                  {
                    userInfo.save.includes(music.id) ?
                      <p style={{ cursor: 'pointer', color: '#0099ff', marginTop: '16px' }} onClick={() => { cancel() }}>Remove Save</p>
                      :
                      <p style={{ cursor: 'pointer', color: '#0099ff', marginTop: '16px' }} onClick={() => { save() }}>Save</p>
                  }
                </div>
                : null
            }

          </div>
        </div>
        <div className="lyric">
          <h2>Lyric</h2>
          <p>{music.lyric}</p>
        </div >

        <div className="comment-list">
          <h2>Comments</h2>
          <div className="comment-input">
            <input value={text} type="text" disabled={!userInfo.id} placeholder={userInfo.id ? 'Say something' : 'Please Log in first'} onInput={({ target }) => { setText(target.value) }} />
            <div className="button" onClick={() => { handleSubmit() }} >Submit</div>
          </div>
          {
            commentList.map((comment, index) => {
              return (
                <div className="comment-item" key={index}>
                  <div className="name">
                    <img src={require('../../assets/head.png')} alt="" />
                    <span>{comment.name}</span>
                  </div>
                  <div className="content">{comment.content}</div>
                  <div className="time">{comment.time}</div>
                </div>
              )
            })
          }
        </div >
      </div >
    </div>
  )
}
export default MusicInfo