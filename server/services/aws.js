const aws = require('aws-sdk');
const multer = require('multer');
const multerS3 = require('multer-s3');
require('dotenv').config();
const s3 = new aws.S3();
aws.config.update({
    accessKeyId: process.env.ACCESS_KEY_ID,
    secretAccessKey: process.env.ACCESS_KEY_SECRET,
    region: 'ap-south-1'
});


var upload = multer({
    storage: multerS3({
        s3: s3,
        acl: 'public-read',
        bucket: 'emagz-live',
        key: function (req, file, cb) {
            console.log("asdasd"+file);
            console.log(process.env.ACCESS_KEY_ID);
            console.log(process.env.ACCESS_KEY_SECRET);

            cb(null, file.originalname); //use Date.now() for unique file keys
        }
    })
});



module.exports = upload;