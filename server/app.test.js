// hello.test.js
const user = require('./routes/user');

it('GET /user', () => {
  expect(user(null)).toBe(500);
});

const music = require('./routes/music');
it('GET /music', () => {
  expect(music(null)).toBe(500);
});

const singer = require('./routes/singer');
it('GET /singer', () => {
  expect(singer(null)).toBe(500);
});

const comment = require('./routes/comment');
it('GET /comment', () => {
  expect(comment(null)).toBe(500);
});

