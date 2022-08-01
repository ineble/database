INSERT IGNORE INTO  membertbl VALUES('KHD','강후덜','미국')
ON DUPLICATE KEY UPDATE userName='강후덜',addr='미국';
INSERT IGNORE INTO  membertbl VALUES('DJM','동짜몽','일본')
ON DUPLICATE KEY UPDATE userName='동짜몽',addr='일본';

SELECT * FROM membertbl;