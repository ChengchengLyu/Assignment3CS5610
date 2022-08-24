import React, { useState, useEffect } from 'react'
import './head.css';
import axios from 'axios'

const Head = () => {
  const [search, setSearch] = useState('');
  const [musicList, setMusicList] = useState([]);
  const [userInfo, setUserInfo] = useState({});
  const [showDialog, setShowDialog] = useState(false);
  const [name, setName] = useState('');
  const [password, setPassword] = useState('');

  useEffect(() => {
    const uinfo = window.localStorage.getItem('userInfo')
    if (uinfo) {
      setUserInfo(JSON.parse(uinfo))
    }
  }, [])

  const toHome = () => {
    window.location.href = '/#/'
  }

  const handleSearch = async (value) => {
    setSearch(value)
    const { data } = await axios.get('http://localhost:3000/music/search/' + search)
    if (data.code === 200) {
      setMusicList(data.data || [])
    }
  }

  const toMusicInfo = (id) => {
    window.location.href = `/#/music-info?id=${id}`
    window.location.reload()
  }

  const handleLogin = async () => {
    if (name && password) {
      const { data } = await axios.post('http://localhost:3000/user/login', {
        name, password
      })
      if (data.code === 200) {
        setShowDialog(false)
        setUserInfo(data.data)
        window.localStorage.setItem('userInfo', JSON.stringify(data.data))
        window.location.reload()
      }
    }
  }

  const toDetail = () => {
    window.location.href = '/#/user-detail'
  }

  const logout = () => {
    window.localStorage.removeItem('userInfo')
    window.location.reload()
  }

  return (
    <div className="header">
      <div className="content">
        <img className="logo" src={require('../../assets/logo.png')} onClick={() => { toHome() }} />
        <div className="search-wrap">
          <input value={search} type="text" placeholder="Search" onInput={({ target }) => { handleSearch(target.value) }} />
          {
            search ? (
              <div className="music-list">
                {
                  musicList.length ? (
                    musicList.map((music, index) => {
                      return (<p key={index} onClick={() => { toMusicInfo(music.id) }}>{music.name}</p>)
                    })
                  ) : (
                    <p style={{ textAglin: 'center' }}>Empty</p>
                  )
                }
              </div>
            ) : null
          }

        </div>
        {
          !userInfo.id ? (
            <div className="button" onClick={() => { setShowDialog(true) }}>Log in/Register</div>
          ) : (
            <div className='action'>
              <span>{userInfo.name}</span>
              <span onClick={() => { toDetail() }}>Savings</span>
              <span onClick={() => { logout() }}>Logout</span>
            </div>
          )
        }
      </div>

      {
        showDialog ? (
          <div class="dialog">
            <h2>Log in/Register</h2>
            <div>
              <label for="">User Name:</label>
              <input value={name} type="text" onInput={({ target }) => { setName(target.value) }} />
            </div>
            <div>
              <label for="">Passwords:</label>
              <input value={password} type="password" onInput={({ target }) => { setPassword(target.value) }} />
            </div>
            <div class="button" onClick={() => { handleLogin() }}>Log in/Register</div>
          </div>
        ) : null
      }

    </div >
  )
}
export default Head