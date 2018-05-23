use restaurant_recommendation;
		
INSERT INTO restaurant (restaurant_name, address_line_1, address_line_2, city, state, zipcode, country, restaurant_type) VALUES ("A-Tan", "3445 Poplar Ave", "", "Memphis", "TN", 38111,"USA","Casual dining");
INSERT INTO restaurant (restaurant_name, address_line_1, address_line_2, city, state, zipcode, country, restaurant_type) VALUES ("Brother Juniper's", "3519 Walker Ave", "", "Memphis", "TN", 38111,"USA","Family style");
INSERT INTO restaurant (restaurant_name, address_line_1, address_line_2, city, state, zipcode, country, restaurant_type) VALUES ("Char Restaurant", "431 S Highland St", "#120", "Memphis", "TN", 38111,"USA","Fine dining");
INSERT INTO restaurant (restaurant_name, address_line_1, address_line_2, city, state, zipcode, country, restaurant_type) VALUES ("Garibaldi's Pizza", "3530 Walker Ave", "", "Memphis", "TN", 38111,"USA","Fast casual");
INSERT INTO restaurant (restaurant_name, address_line_1, address_line_2, city, state, zipcode, country, restaurant_type) VALUES ("Moe's Southwest Grill", "3546 Walker Ave", "", "Memphis", "TN", 38111,"USA","Ethnic");
INSERT INTO restaurant (restaurant_name, address_line_1, address_line_2, city, state, zipcode, country, restaurant_type) VALUES ("Osaka", " 3402 Poplar Ave", "", "Memphis", "TN", 38111,"USA","Fine dining");


INSERT INTO restaurant_phone (restaurant_id, phone_number) VALUES (1, "757457952");
INSERT INTO restaurant_phone (restaurant_id, phone_number) VALUES (2, "857457952");
INSERT INTO restaurant_phone (restaurant_id, phone_number) VALUES (3, "907457952");
INSERT INTO restaurant_phone (restaurant_id, phone_number) VALUES (4, "747457952");
INSERT INTO restaurant_phone (restaurant_id, phone_number) VALUES (5, "557457952");


INSERT INTO users (email_id, first_name, middle_name, last_name, date_of_birth, address_line_1, address_line_2, city, state, zipcode, country) VALUES ("atiha@memphis.edu", "Anjana", "", "Tiha", 01/01/1989, "4560 Scott Avenue", "Apt 5", "Memphis", "TN", 38111, "USA");
INSERT INTO users (email_id, first_name, middle_name, last_name, date_of_birth, address_line_1, address_line_2, city, state, zipcode, country) VALUES ("adam_lambert@memphis.edu", "Adam", "", "Lambert", 01/29/1982, "236 Stage Road", "Apt 85", "Memphis", "TN", 38234, "USA");
INSERT INTO users (email_id, first_name, middle_name, last_name, date_of_birth, address_line_1, address_line_2, city, state, zipcode, country) VALUES ("leona_lewis@memphis.edu", "Leona", "", "Lewis", 04/03/1985, "3124 Walker Avenue", "Apt 45", "Memphis", "TN", 38111, "USA");
INSERT INTO users (email_id, first_name, middle_name, last_name, date_of_birth, address_line_1, address_line_2, city, state, zipcode, country) VALUES ("calcium_scott@memphis.edu", "Calcium", "", "Scott", 10/12/1988, "100 Jefferson Square", "Apt 12", "Watertown", "CT", 06308, "USA");
INSERT INTO users (email_id, first_name, middle_name, last_name, date_of_birth, address_line_1, address_line_2, city, state, zipcode, country) VALUES ("jenifer_hudson@memphis.edu", "Jenifer", "", "Hudson", 09/12/1981, "615 Scott Road", "Apt 28", "Hartford", "CT", 38111, "USA");

INSERT INTO users_phone (user_id, phone_number) VALUES (1, "855457952");
INSERT INTO users_phone (user_id, phone_number) VALUES (2, "883457952");
INSERT INTO users_phone (user_id, phone_number) VALUES (3, "911457952");
INSERT INTO users_phone (user_id, phone_number) VALUES (4, "793457952");
INSERT INTO users_phone (user_id, phone_number) VALUES (5, "517457952");


INSERT INTO coupon (coupon_code, restaurant_id, discount_percentage, valid_date) VALUES ("4H2AG", 1, 5.0,01/01/2018);
INSERT INTO coupon (coupon_code, restaurant_id, discount_percentage, valid_date) VALUES ("A52EE3", 2, 10.0,12/15/2017);
INSERT INTO coupon (coupon_code, restaurant_id, discount_percentage, valid_date) VALUES ("5S28RA3", 3, 15.0, 12/21/2017);


INSERT INTO cuisine (cuisine_name) VALUES("Afghani");
INSERT INTO cuisine (cuisine_name) VALUES("Algerian");
INSERT INTO cuisine (cuisine_name) VALUES("American");
INSERT INTO cuisine (cuisine_name) VALUES("Armenian");
INSERT INTO cuisine (cuisine_name) VALUES("Belgian");
INSERT INTO cuisine (cuisine_name) VALUES("Bengali");
INSERT INTO cuisine (cuisine_name) VALUES("Breakfast");
INSERT INTO cuisine (cuisine_name) VALUES("Cantonese"); 
INSERT INTO cuisine (cuisine_name) VALUES("Chinese");
INSERT INTO cuisine (cuisine_name) VALUES("Dutch");
INSERT INTO cuisine (cuisine_name) VALUES("Egyptian");
INSERT INTO cuisine (cuisine_name) VALUES("European"); 
INSERT INTO cuisine (cuisine_name) VALUES("French"); 
INSERT INTO cuisine (cuisine_name) VALUES("Fusion");
INSERT INTO cuisine (cuisine_name) VALUES("Greek");
INSERT INTO cuisine (cuisine_name) VALUES("Hawaiian"); 
INSERT INTO cuisine (cuisine_name) VALUES("Hunan");
INSERT INTO cuisine (cuisine_name) VALUES("Hyderabadi");
INSERT INTO cuisine (cuisine_name) VALUES("Indian");
INSERT INTO cuisine (cuisine_name) VALUES("Italian");
INSERT INTO cuisine (cuisine_name) VALUES("Japanese");
INSERT INTO cuisine (cuisine_name) VALUES("Kashmiri");
INSERT INTO cuisine (cuisine_name) VALUES("Kerala");
INSERT INTO cuisine (cuisine_name) VALUES("Korean");
INSERT INTO cuisine (cuisine_name) VALUES("Lebanese");
INSERT INTO cuisine (cuisine_name) VALUES("Libyan");
INSERT INTO cuisine (cuisine_name) VALUES("Mediterranean"); 
INSERT INTO cuisine (cuisine_name) VALUES("Mexican");
INSERT INTO cuisine (cuisine_name) VALUES("Moroccan");
INSERT INTO cuisine (cuisine_name) VALUES("Mughlai");
INSERT INTO cuisine (cuisine_name) VALUES("Nepalese");
INSERT INTO cuisine (cuisine_name) VALUES("Pakistani"); 
INSERT INTO cuisine (cuisine_name) VALUES("Polish");
INSERT INTO cuisine (cuisine_name) VALUES("Rajasthani"); 
INSERT INTO cuisine (cuisine_name) VALUES("Seafood");
INSERT INTO cuisine (cuisine_name) VALUES("Sindhi"); 
INSERT INTO cuisine (cuisine_name) VALUES("Steak");
INSERT INTO cuisine (cuisine_name) VALUES("Swiss");
INSERT INTO cuisine (cuisine_name) VALUES("Szechuan"); 
INSERT INTO cuisine (cuisine_name) VALUES("Tex-Mex");
INSERT INTO cuisine (cuisine_name) VALUES("Thai");
INSERT INTO cuisine (cuisine_name) VALUES("Turkish");
INSERT INTO cuisine (cuisine_name) VALUES("Vietnamese"); 
INSERT INTO cuisine (cuisine_name) VALUES("Caribbean");



INSERT INTO has_cuisine (restaurant_id, cuisine_id) VALUES (1,28);
INSERT INTO has_cuisine (restaurant_id, cuisine_id) VALUES (2,3);
INSERT INTO has_cuisine (restaurant_id, cuisine_id) VALUES (2,7);
INSERT INTO has_cuisine (restaurant_id, cuisine_id) VALUES (4,20);
INSERT INTO has_cuisine (restaurant_id, cuisine_id) VALUES (3,37);
INSERT INTO has_cuisine (restaurant_id, cuisine_id) VALUES (1,9);
INSERT INTO has_cuisine (restaurant_id, cuisine_id) VALUES (1,13);
INSERT INTO has_cuisine (restaurant_id, cuisine_id) VALUES (1,17);
INSERT INTO has_cuisine (restaurant_id, cuisine_id) VALUES (1,21);
INSERT INTO has_cuisine (restaurant_id, cuisine_id) VALUES (1,39);
INSERT INTO has_cuisine (restaurant_id, cuisine_id) VALUES (5,28);
INSERT INTO has_cuisine (restaurant_id, cuisine_id) VALUES (6,8);
INSERT INTO has_cuisine (restaurant_id, cuisine_id) VALUES (6,9);
INSERT INTO has_cuisine (restaurant_id, cuisine_id) VALUES (6,14);
INSERT INTO has_cuisine (restaurant_id, cuisine_id) VALUES (6,21);


INSERT INTO likes_cuisine (user_id, cuisine_id) VALUES (3,39);
INSERT INTO likes_cuisine (user_id, cuisine_id) VALUES (3,28);
INSERT INTO likes_cuisine (user_id, cuisine_id) VALUES (3,17);
INSERT INTO likes_cuisine (user_id, cuisine_id) VALUES (1,2);
INSERT INTO likes_cuisine (user_id, cuisine_id) VALUES (1,7);
INSERT INTO likes_cuisine (user_id, cuisine_id) VALUES (1,8);
INSERT INTO likes_cuisine (user_id, cuisine_id) VALUES (3,13);
INSERT INTO likes_cuisine (user_id, cuisine_id) VALUES (5,4);
INSERT INTO likes_cuisine (user_id, cuisine_id) VALUES (5,9);
INSERT INTO likes_cuisine (user_id, cuisine_id) VALUES (5,14);
INSERT INTO likes_cuisine (user_id, cuisine_id) VALUES (5,20);
INSERT INTO likes_cuisine (user_id, cuisine_id) VALUES (5,21);
INSERT INTO likes_cuisine (user_id, cuisine_id) VALUES (5,28);
INSERT INTO likes_cuisine (user_id, cuisine_id) VALUES (5,37);



INSERT INTO user_follows (follower_user_id, follows_user_id) VALUES (1,2);
INSERT INTO user_follows (follower_user_id, follows_user_id) VALUES (2,3);
INSERT INTO user_follows (follower_user_id, follows_user_id) VALUES (3,4);


INSERT INTO review (user_id, restaurant_id, datetime_posted, ambience, food_quality, service, price, overall_experience, text_comment) VALUES (1, 2, 01/01/2017, 4,4,5,4,4,"Very good food and excelent ambience");
INSERT INTO review (user_id, restaurant_id, datetime_posted, ambience, food_quality, service, price, overall_experience, text_comment) VALUES (2, 2,  11/15/2016, 4,5,3,4,4,"Good Breakfast");
INSERT INTO review (user_id, restaurant_id, datetime_posted, ambience, food_quality, service, price, overall_experience, text_comment) VALUES (3, 3, 05/21/2015, 5,4,3,3,4,"Good food, great dinner");
INSERT INTO review (user_id, restaurant_id, datetime_posted, ambience, food_quality, service, price, overall_experience, text_comment) VALUES (5, 6, 05/23/2017, 5,4,4,3,4,"Great service, quality hibachi food");
INSERT INTO review (user_id, restaurant_id, datetime_posted, ambience, food_quality, service, price, overall_experience, text_comment) VALUES (2, 4, 05/23/2017, 4,4,4,3,4,"This is and will forever be, my favorite pizza place. Friendly employees, delicious pizza and great buffet every day. Sweet tea is the bomb, pinball machines, tvs. Close to home. I love this place.");
INSERT INTO review (user_id, restaurant_id, datetime_posted, ambience, food_quality, service, price, overall_experience, text_comment) VALUES (1, 5, 05/23/2017, 3,4,4,3,4,"Great food, good service, excellent prices!");
INSERT INTO review (user_id, restaurant_id, datetime_posted, ambience, food_quality, service, price, overall_experience, text_comment) VALUES (5, 5, 05/23/2017, 3,4,4,3,4,"Great food, good service, excellent prices!");

INSERT INTO review_rating (review_id, review_rater_id, review_rating) VALUES (1, 2, 3);
INSERT INTO review_rating (review_id, review_rater_id, review_rating) VALUES (2, 4, 5);
INSERT INTO review_rating (review_id, review_rater_id, review_rating) VALUES (3, 5, 5);
INSERT INTO review_rating (review_id, review_rater_id, review_rating) VALUES (2, 3, 4);
INSERT INTO review_rating (review_id, review_rater_id, review_rating) VALUES (2, 1, 4);
INSERT INTO review_rating (review_id, review_rater_id, review_rating) VALUES (3, 2, 5);


INSERT INTO has_coupon (user_id, coupon_id) VALUES (1, 2);
INSERT INTO has_coupon (user_id, coupon_id) VALUES (2, 3);
INSERT INTO has_coupon (user_id, coupon_id) VALUES (1, 3);

INSERT INTO rate_user (reviewer_id, reviewee_id, rating) VALUES (1, 2,5);
INSERT INTO rate_user (reviewer_id, reviewee_id, rating) VALUES (2, 4, 4);
INSERT INTO rate_user (reviewer_id, reviewee_id, rating) VALUES (1, 3, 3);


