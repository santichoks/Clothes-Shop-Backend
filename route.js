const express = require('express');
const controller = require('./controller');
const router = express.Router();

router.get('/products', controller.getProducts);
router.get('/orders', controller.getOrders);
router.post('/orders', controller.createOrder);

module.exports = router;