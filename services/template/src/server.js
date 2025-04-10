const express = require('express');
const app = express();
app.get('/api/health', (req, res) => res.json({ status: 'ok' }));
app.listen(8080, () => console.log('Server on port 8080'));

app.use((req, res, next) => {
  req.tenantId = 'tenant_001'; // Placeholder
  next();
});
