DROP database IF EXISTS restaurant_recommendation;

CREATE database restaurant_recommendation;

USE restaurant_recommendation;
	
CREATE TABLE restaurant
	(
			restaurant_id INT(11) NOT NULL AUTO_INCREMENT,
            
			restaurant_name VARCHAR(50) NOT NULL,
            address_line_1 VARCHAR(150) NOT NULL,
            address_line_2 VARCHAR(150),
            city VARCHAR(50) NOT NULL,
            state VARCHAR(50) NOT NULL,
            zipcode INT(8) NOT NULL,
            country VARCHAR(50) NOT NULL,
            restaurant_type enum('Ethnic', 'Fast food', 'Fast casual', 'Casual dining', 'Family style', 'Fine dining'),
            
			PRIMARY KEY(restaurant_id),
			
			CONSTRAINT restaurant_unique UNIQUE (restaurant_name, zipcode)
	);

	
CREATE TABLE restaurant_phone
	(
			restaurant_phone_id INT NOT NULL AUTO_INCREMENT,
			
			restaurant_id INT(11) NOT NULL,
            phone_number VARCHAR(20) NOT NULL,
            
			PRIMARY KEY(restaurant_phone_id),
			
			CONSTRAINT restaurant_phone_unique UNIQUE (restaurant_id, phone_number),
			
			FOREIGN KEY (restaurant_id)
				REFERENCES restaurant(restaurant_id) ON DELETE CASCADE
			
	);
	
CREATE TABLE users
	(
			user_id INT NOT NULL AUTO_INCREMENT,
			
			email_id VARCHAR(50) NOT NULL,
            first_name VARCHAR(50) NOT NULL,
            middle_name VARCHAR(50),
            last_name VARCHAR(50) NOT NULL,
            DATE_of_birth DATE NOT NULL,
            address_line_1 VARCHAR(150),
            address_line_2 VARCHAR(150),
            city VARCHAR(50) NOT NULL,
            state VARCHAR(50) NOT NULL,
            zipcode INT(8) NOT NULL,
            country VARCHAR(50) NOT NULL,
            trustworthiness INT,
			
			PRIMARY KEY(user_id),
			
			CONSTRAINT trustworthiness_ck CHECK (trustworthiness IN (1, 2, 3, 4, 5)),
            CONSTRAINT users_unique UNIQUE (email_id)
				
	);
   
 CREATE TABLE users_phone
	(
			users_phone_id INT NOT NULL AUTO_INCREMENT,
			
			user_id INT NOT NULL,
            phone_number VARCHAR(20) NOT NULL,
			
            PRIMARY KEY(users_phone_id),
			
			CONSTRAINT users_phone_unique UNIQUE (user_id, phone_number),
			
			FOREIGN KEY (user_id)
				REFERENCES users(user_id) ON DELETE CASCADE
	);
	
	
CREATE TABLE coupon
	(
		coupon_id INT NOT NULL AUTO_INCREMENT,
		
		coupon_code VARCHAR(50) NOT NULL,
        restaurant_id INT(11) NOT NULL,
        discount_percentage FLOAT NOT NULL,
        valid_DATE DATE NOT NULL,
		
		PRIMARY KEY(coupon_id),
		
        CONSTRAINT coupon_unique UNIQUE (coupon_code, restaurant_id),
		
		FOREIGN KEY (restaurant_id)
			REFERENCES restaurant(restaurant_id) ON DELETE CASCADE
			
    );

CREATE TABLE cuisine
	(
		cuisine_id INT(3) NOT NULL AUTO_INCREMENT,
		
		cuisine_name VARCHAR(50) NOT NULL,
		
		PRIMARY KEY(cuisine_id),
		
		CONSTRAINT cuisine_unique UNIQUE (cuisine_name)
			
    );
    
CREATE TABLE has_cuisine
	(
		has_cuisine_id INT NOT NULL AUTO_INCREMENT,
		
		restaurant_id INT(11) NOT NULL,
        cuisine_id INT(3) NOT NULL,
		
		PRIMARY KEY(has_cuisine_id),
		
		CONSTRAINT has_cuisine_unique UNIQUE (restaurant_id, cuisine_id),

		FOREIGN KEY(restaurant_id)
			REFERENCES restaurant(restaurant_id) ON DELETE CASCADE,
		FOREIGN KEY(cuisine_id)
			REFERENCES cuisine(cuisine_id) ON DELETE CASCADE
    );

	
CREATE TABLE likes_cuisine
	(
		likes_cuisine_id INT NOT NULL AUTO_INCREMENT,
		
		user_id INT NOT NULL,
        cuisine_id INT(3) NOT NULL,
		
        PRIMARY KEY(likes_cuisine_id),
		
		CONSTRAINT likes_cuisine_unique UNIQUE (user_id, cuisine_id),
        
		FOREIGN KEY(user_id)
			REFERENCES users(user_id) ON DELETE CASCADE,
		FOREIGN KEY(cuisine_id)
			REFERENCES cuisine(cuisine_id) ON DELETE CASCADE
    );
    
	
CREATE TABLE user_follows
	(
		user_follows_id INT NOT NULL AUTO_INCREMENT,
		
		follower_user_id INT NOT NULL,
        follows_user_id INT NOT NULL,
        
        PRIMARY KEY (user_follows_id),
		
        CONSTRAINT user_follows_unique UNIQUE (follower_user_id, follows_user_id),
		
		FOREIGN KEY(follower_user_id)
			REFERENCES users(user_id) ON DELETE CASCADE,
		FOREIGN KEY(follows_user_id)
			REFERENCES users(user_id) ON DELETE CASCADE
    );
    
CREATE TABLE review
	(
		review_id INT NOT NULL AUTO_INCREMENT,
		
		user_id INT NOT NULL,
        restaurant_id INT(11) NOT NULL,
		
        datetime_posted DATETIME NOT NULL,
		
        ambience INT(1) NOT NULL,
		CONSTRAINT ambience_ck CHECK (ambience IN (1, 2, 3, 4, 5)),
		
		food_quality INT(1) NOT NULL,
		CONSTRAINT food_quality_ck CHECK (food_quality IN (1, 2, 3, 4, 5)),
		
		service INT(1) NOT NULL,
		CONSTRAINT service_ck CHECK (service IN (1, 2, 3, 4, 5)),
		
        price INT(1) NOT NULL,
		CONSTRAINT price_ck CHECK (price IN (1, 2, 3, 4, 5)),
		
        overall_experience INT(1) NOT NULL,
		CONSTRAINT overall_experience_ck CHECK (overall_experience IN (1, 2, 3, 4, 5)),
		
        text_comment text,
		
		PRIMARY KEY (review_id),
		
        CONSTRAINT review_unique UNIQUE (user_id, restaurant_id, datetime_posted),
        
		FOREIGN KEY(user_id)
			REFERENCES users(user_id) ON DELETE CASCADE,
		FOREIGN KEY(restaurant_id)
			REFERENCES restaurant(restaurant_id) ON DELETE CASCADE
			
    );
	
CREATE TABLE review_rating
	(
		review_rating_id INT NOT NULL AUTO_INCREMENT,
		
		review_id INT NOT NULL,
		review_rater_id INT NOT NULL, 
		review_rating INT NOT NULL,
		
		CONSTRAINT review_rating_ck CHECK (review_rating IN (1, 2, 3, 4, 5)),
		
		PRIMARY KEY (review_rating_id),
		
        CONSTRAINT review_rating_unique UNIQUE (review_id, review_rater_id),
        
		FOREIGN KEY(review_id)
			REFERENCES review(review_id) ON DELETE CASCADE,
		FOREIGN KEY(review_rater_id)
			REFERENCES users(user_id) ON DELETE CASCADE

    );
    
	
CREATE TABLE has_coupon
	(
		has_coupon_id INT NOT NULL AUTO_INCREMENT,
		
		user_id INT NOT NULL,
        coupon_id INT NOT NULL,

        PRIMARY KEY (has_coupon_id),
		
		CONSTRAINT has_coupon_id_unique UNIQUE (user_id, coupon_id),
        
        FOREIGN KEY(user_id)
			REFERENCES users(user_id) ON DELETE CASCADE,
		FOREIGN KEY(coupon_id)
			REFERENCES coupon(coupon_id) ON DELETE CASCADE
        
		
    );

CREATE TABLE rate_user
	(
		rate_user_id INT NOT NULL AUTO_INCREMENT,
		
		reviewer_id INT NOT NULL,
		reviewee_id INT NOT NULL,
		rating INT NOT NULL,
		
		CONSTRAINT rating_ck CHECK (rating IN (1, 2, 3, 4, 5)),
		
		PRIMARY KEY (rate_user_id),
		
		CONSTRAINT rate_user_id_unique UNIQUE (reviewer_id, reviewee_id),
        
		FOREIGN KEY(reviewer_id)
			REFERENCES users(user_id) ON DELETE CASCADE,
		FOREIGN KEY(reviewee_id)
			REFERENCES users(user_id) ON DELETE CASCADE
			
    );
	
	
CREATE TABLE restaurant_rating
	(
		restaurant_rating_id INT NOT NULL AUTO_INCREMENT,
		
        restaurant_id INT(11) NOT NULL,
		
        ambience FLOAT,
		food_quality FLOAT,
		service FLOAT,
        price FLOAT,
        overall_experience FLOAT,	
		
		PRIMARY KEY (restaurant_rating_id),
		
        CONSTRAINT restaurant_review_unique UNIQUE (restaurant_id),
        
		FOREIGN KEY(restaurant_id)
			REFERENCES restaurant(restaurant_id) ON DELETE CASCADE
			
    );
	
CREATE TABLE user_rating
	(
		user_rating_id INT NOT NULL AUTO_INCREMENT,
		
        user_id INT NOT NULL,
        user_rating FLOAT,	
		
		PRIMARY KEY (user_rating_id),
		
        CONSTRAINT user_rating_unique UNIQUE (user_rating_id),
        
		FOREIGN KEY(user_id)
			REFERENCES users(user_id) ON DELETE CASCADE
			
    );