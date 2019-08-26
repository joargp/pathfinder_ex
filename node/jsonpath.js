var jsonpath = require('jsonpath');

module.exports = {
  query: (payload, path, count = undefined) => {
    return jsonpath.query(JSON.parse(payload), path, count);
  },

}