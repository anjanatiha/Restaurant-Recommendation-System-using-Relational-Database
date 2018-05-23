#For average user trustworthiness:
SELECT users.user_id, users.first_name, users.last_name, AVG(review_rating.review_rating) FROM users, review_rating, review WHERE users.user_id = review.user_id AND review.review_id = review_rating.review_id GROUP BY user_id;

SELECT users.first_name, users.last_name, restaurant.restaurant_name, restaurant.zipcode FROM restaurant, users, likes_cuisine, has_cuisine, cuisine WHERE users.user_id = likes_cuisine.user_id AND has_cuisine.restaurant_id = restaurant.restaurant_id AND cuisine.cuisine_id = likes_cuisine.cuisine_id AND cuisine.cuisine_id = has_cuisine.cuisine_id AND restaurant.zipcode = users.zipcode AND users.first_name = "Jenifer";

SELECT users.first_name, users.middle_name, users.last_name, cuisine.cuisine_name FROM users, likes_cuisine, cuisine WHERE users.user_id = likes_cuisine.user_id AND cuisine.cuisine_id = likes_cuisine.cuisine_id AND users.first_name = "Jenifer"

SELECT restaurant.restaurant_name, restaurant.zipcode, AVG(review.food_quality) FROM restaurant, review WHERE review.restaurant_id = restaurant.restaurant_id AND restaurant.zipcode IN (SELECT zipcode FROM users WHERE users.first_name = "Jenifer" AND users.last_name ="Hudson");
