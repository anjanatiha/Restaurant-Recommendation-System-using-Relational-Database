use restaurant_recommendation;
		
INSERT INTO restaurant (restaurant_name, address_line_1, address_line_2, city, state, zipcode, country, restaurant_type) VALUES ("Brother Juniper's", "3519 Walker Ave", "", "Memphis", "TN", 38111,"USA","Family style");

INSERT INTO restaurant_phone (restaurant_id, phone_number) VALUES (1, "757457952");

INSERT INTO users (email_id, first_name, middle_name, last_name, date_of_birth, address_line_1, address_line_2, city, state, zipcode, country) VALUES ("atiha@memphis.edu", "Anjana", "", "Tiha", 01/01/1989, "4560 Scott Avenue", "Apt 5", "Memphis", "TN", 38111, "USA");

INSERT INTO users_phone (user_id, phone_number) VALUES (1, "855457952");


INSERT INTO coupon (coupon_code, restaurant_id, discount_percentage, valid_date) VALUES ("4H2AG", 1, 5.0,01/01/2018);


INSERT INTO cuisine (cuisine_name) VALUES("Chinese");


INSERT INTO has_cuisine (restaurant_id, cuisine_id) VALUES (1,2);


INSERT INTO likes_cuisine (user_id, cuisine_id) VALUES (3,5);

INSERT INTO user_follows (follower_user_id, follows_user_id) VALUES (1,2);


INSERT INTO review (user_id, restaurant_id, datetime_posted, ambience, food_quality, service, price, overall_experience, text_comment) VALUES (1, 2, 01/01/2017, 3,3,3,4,4,"Good food");

INSERT INTO review_rating (review_id, review_rater_id, review_rating) VALUES (1, 2, 1);


INSERT INTO has_coupon (user_id, coupon_id) VALUES (1, 2);

INSERT INTO rate_user (reviewer_id, reviewee_id, rating) VALUES (1, 2,5);


