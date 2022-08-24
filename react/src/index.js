import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import Home from './view/home/home'
import SingerInfo from './view/singer-info/singer-info'
import MusicInfo from './view/music-info/music-info'
import UserDetail from './view/user-detail/user-detail'

import {
  HashRouter as Router,
  Route,
  Routes
} from 'react-router-dom';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <Router>
    <Routes>
      <Route path="/" element={<Home />} />
      <Route path="/singer-info" element={<SingerInfo />} />
      <Route path="/music-info" element={<MusicInfo />} />
      <Route path="/user-detail" element={<UserDetail />} />
    </Routes>
  </Router>
);
