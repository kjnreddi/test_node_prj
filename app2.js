const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Hello World!234');
});

const PORT = process.env.PORT || 3002;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});