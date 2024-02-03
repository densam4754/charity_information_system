const express = require('express');
const router = express.Router();
const authMiddleware = require('../middlewares/authMiddleware');
const donationController = require('../controllers/donationController');

router.use(authMiddleware);

router.post('/submitDonation', donationController.submitDonation);

module.exports = router;
