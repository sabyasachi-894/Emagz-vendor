const mongoose = require('mongoose');
const bcrypt = require('bcryptjs');

const VendorApprovalSchema = mongoose.Schema(
  {
    user_id: {
      type: mongoose.Schema.Types.ObjectId,
      ref: 'User'
    },
    address: {
      type: String,
      default: "",
    },
    pincode: {
      type: Number,
      default: "",
    },
    country: {
      type: mongoose.Schema.Types.ObjectId,
      ref: 'country'
    },
    state: {
      type: mongoose.Schema.Types.ObjectId,
      ref: 'state'
    },
    city: {
      type: mongoose.Schema.Types.ObjectId,
      ref: 'city'
    },
    business_name: {
      type: String,
      default: "",
    },
    pan_number: {
      type: String,
      default: "",
    },
    business_type: {
      type: String,
      default: '',
    },
    business_address: {
      type: Number,
      default: '',
    },
    business_pincode: {
      type: String,
      default: '',
    },
    address_proof: {
      type: String,
      default: '',
    },
    gst_number: {
      type: String,
      default: '',
    },
    signature: {
      type: String,
      default: '',
    },
    banner_image: {
      type: String,
      default: '',
    },
    logo: {
      type: String,
      default: '',
    },
    is_verify: {
      type: Boolean,
      default: false
    },
  },
  {
    timestamps: true,
  },
);

const VendorApproval = mongoose.model('VendorApproval', VendorApprovalSchema);
module.exports = VendorApproval;
