import React, { useState, useEffect } from 'react'
import './home.css';
import axios from 'axios'
import Head from '../../components/head/head'

const Home = () => {

  const [newMusic, setNewMusic] = useState([]);
  const [singerList, setSingerList] = useState([]);

  useEffect(() => {
    fetchNewMusic()
    fetchSinger()
  }, [])

  const fetchNewMusic = async () => {
    const { data } = await axios.get('http://localhost:3000/music')
    if (data.code === 200) {
      setNewMusic(data.data)
    }
  }

  const fetchSinger = async () => {
    const { data } = await axios.get('http://localhost:3000/singer')
    if (data.code === 200) {
      setSingerList(data.data)
    }
  }

  const toInfo = (id) => {
    window.location.href = `/#/singer-info?id=${id}`
  }

  const toMusicInfo = (id) => {
    window.location.href = `/#/music-info?id=${id}`
  }

  return (
    <div className="index-page page">
      <Head></Head>
      <div className="left">
        <h2>Play Lists</h2>
        <div className="music-list">
          {
            newMusic.map((music, index) => {
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
      <div className="singer-list">
        <h2>Singer List</h2>
        {
          singerList.map((singer, index) => {
            return (
              <p key={index} onClick={() => { toInfo(singer.id) }}>
                <img src={singer.storage} alt="" />
                <span>{singer.name}</span>
              </p>
            )
          })
        }
      </div>
    </div >
  )
}
export default Home