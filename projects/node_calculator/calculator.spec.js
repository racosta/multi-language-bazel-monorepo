const assert = require('assert')

const Calculator = require('./calculator');
const c = new Calculator();

describe('mocha', () => {
  it('integrates with Bazel', () => {
    assert(true)
  })

  it('is in bazel-out', () => {
    assert.match(__dirname, /bazel-out/)
  })

  it('adds correctly', () => {
    const expected = 3;
    assert.equal(c.add(1, 2), expected)
  })

  it('adds negative numbers correctly', () => {
    const expected = -15;
    assert.equal(c.add(-4, -11), expected)
  })
})
