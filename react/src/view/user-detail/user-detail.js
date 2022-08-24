import React, { useState, useEffect } from 'react'
import './user-detail.css';
import axios from 'axios'
import Head from '../../components/head/head'

const UserDetail = () => {
  const [musicList, setMusicList] = useState([]);
  const [userInfo, setUserInfo] = useState({});

  useEffect(() => {
    fetchMusic()
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
    const { data } = await axios.get('http://localhost:3000/music')
    if (data.code === 200) {
      setMusicList(data.data)
    }
  }

  const toMusicInfo = (id) => {
    window.location.href = `/#/music-info?id=${id}`
  }

  return (
    <div className='page'>
      <Head></Head>
      <div className="user-detail">
        <h2>My Savings</h2>
        <div className="music-list">
          {
            musicList.filter(item => userInfo.save.includes(item.id)).map((music, index) => {
              return (
                <div className="music" key={index} onClick={() => { toMusicInfo(music.id) }}>
                  <img src={music.cover} alt="" />
                  <p className="name">{music.name}</p>
                  <p className="singer">{music.singer_name}</p>
                </div>
              )
            })
          }
        </div>
      </div>
    </div>
  )
}
export default UserDetail