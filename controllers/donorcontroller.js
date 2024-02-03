const connection = require('../db');

exports.submitDonation = async (req, res) => {
  try {
    const { amount, description } = req.body;
    const userId = req.userData.userId;

    // Save donation to the database
    await connection.promise().execute(
      'INSERT INTO donations (user_id, amount, description) VALUES (?, ?, ?)',
      [userId, amount, description]
    );

    res.json({ message: 'Donation submitted successfully' });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: 'Internal Server Error' });
  }
};
