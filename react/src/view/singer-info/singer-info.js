import React, { useState, useEffect } from 'react'
import './singer-info.css';
import axios from 'axios'
import Head from '../../components/head/head'

const SingerInfo = () => {
  const [singer, setSinger] = useState({});
  const [musicList, setMusicList] = useState([]);

  useEffect(() => {
    fetchSinger()
    fetchMusic()
  }, [])

  const fetchSinger = async () => {
    const id = window.location.hash.split('=')[1]
    const { data } = await axios.get(
      `http://localhost:3000/singer/${id}`
    )
    if (data.code === 200) {
      setSinger(data.data)
    }
  }
  const fetchMusic = async () => {
    const id = window.location.hash.split('=')[1]
    const { data } = await axios.get(
      `http://localhost:3000/music/by-singer/${id}`
    )
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
      <div className="singer-info page">
        <div className="info">
          <img src={singer.storage} alt="" />
          <div>
            <h1>{singer.name}</h1>
            <p className="desc">{singer.singer_desc}</p>
          </div>
        </div>
        <div className="lyric">
          <h2>Music</h2>
          <div className="music-list">
            {
              musicList.map((music, index) => {
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
        </div >
      </div >
    </div>
  )
}
export default SingerInfo
