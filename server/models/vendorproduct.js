const mongoose = require("mongoose");
const { productSchema } = require("./product");

const vendorproductSchema = mongoose.Schema({
  products: [
    {
      product: productSchema,
      quantity: {
        type: Number,
        required: true,
      },
    },
  ],
  totalPrice: {
    type: Number,
    required: true,
  },

  userId: {
    required: true,
    type: String,
  },
  orderedAt: {
    type: Number,
    required: true,
  },
  status: {
    type: Number,
    default: 0,
  },
});

const VendorProduct = mongoose.model("VendorProduct", vendorproductSchema);
module.exports = VendorProduct;
