var express = require('express')
var router = express.Router();
var posts = require('../posts');
var health = require('../health');

router.get('/posts', posts.getPosts);
router.get('/health', health.getHealth);

module.exports = router;