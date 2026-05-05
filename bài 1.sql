-- Code đúng:
SELECT restaurant_name, address, rating
FROM restaurants
WHERE district IN ('Quận 1', 'Quận 3') AND rating > 4.0;

-- lý do sai nằm ở dòng điều kiện tìm rating > 4.0 
-- vì trong code gốc đã viết " WHERE district = 'Quận 1' OR district = 'Quận 3' AND rating > 4.0; " 
-- thì sai ở logic OR và AND vì độ ưu tiên của AND lớn hơn OR 
-- nên khi này đoạn code của chúng ta sẽ thành là " WHERE district = 'Quận 1' OR (district = 'Quận 3' AND rating > 4.0;) " 
-- nên là em sài IN để gom hai cái lại thành tương đương cùng với nhau để hai cái đều được so sánh với AND rating > 4.0.
