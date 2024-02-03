const express = require('express');
const app = express();
const authRoutes = require('./routes/authRoutes');
const donorRoutes = require('./routes/donorRoutes');

app.use(express.json());

// Use authentication routes
app.use('/auth', authRoutes);

// Use donor routes
app.use('/donor', donorRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
