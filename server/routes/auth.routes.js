const router = require('express').Router();
const User = require('../models/user.model');
const bcrypt = require('bcrypt');
const jsonwebtoken = require('jsonwebtoken');
const { JWT_SECRET } = require('../config/jwt');

router.post('/', async (req, res, next) => {
    try {
      const body = req.body;
      if (!body.email || !body.password) {
        res.status(400).json({ error: 'missing credentials' });
      } else {
        const user = await User.findOne({ email: body.email }, '-__v', {}).exec();
        const match = await bcrypt.compare(body.password, user.password);
        if (!match) {
          res.status(400).json({ error: 'wrong password' });
        } else {
          const token = jsonwebtoken.sign(
            {
                sub: user._id.toString(),
            },
            JWT_SECRET,
            {
              expiresIn: '15min',
              algorithm: 'HS256',
            }
          );
          if (!token) {
            res.status(400).json({ error: 'something went wrong' });
          } else {
            res.status(200).json({
              user,
              token,
            });
          }
        }
      }
    } catch (e) {
      next(e);
    }
  });
  
  module.exports = router;            