# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


-------------> when Request for upload a book
       options available for create a book 
         -check whether book available at database (with name and writer) if yes then show link of those books  
         -name
         -author
         -edition
--------------> Upload a book 
       options available for create a book 
         -check whether book available at database (with name and writer)
           -name
           -author
           -available_at
           -availability
           -book cover
           -published_at
           -description

--------------> contact info of users will be shown in email after registration for book

---------------> User have earning points and used points

---------------> Book has Catagory and Tags

-----------> if book returned after due date , 
                  -->decrease user rating
                  --> redues user's point .


---User Can have Atmost one Book at a time for read.

----------->User can request for multiple book to user for share. 

------------->if user grab one book  then all request for other books should be cancel.

------------->User can aprove for share book or reject that request(optional with note ).


------------>If User Delete account --->soft delete
------> User info will be shown to only User whose book he take on rent.


------------>By Default When User Create Acc +50 points added to users acc.

------------> If User added a book to wishlist , All Notifications of Availability Book will be sent to User in mail. untill user not grab that book .


===========> Searching 
-------------autofill search ..
===========> filering 
--------------By
                Name
                Popularity(most booked)
                Latest Uploaded
                Latest Published

=============> Recommendation for new books 
---------->Any User Can Recommend for new book 

=========> Fake User should be Block/ Deactivated.
-----------------> when block user loged in ...show "your services has been blocked. 

==========>If Any User can Complains/Report . 
==============>FeedBacks/Suggestions.

==========> Terms And Conditions For Booking a Book.

==========> Users pic on Books Uploaded By him.

=====> if any user booked ur book , you will be awareded +20 points.
====> if you booked a book , you have to pay -30 points.


========> if share a book to another user , you have option
            -------------take points OR
            -------------- some tip(tip options or you can add ).
            --------------- exchange books .




===========Followers and following will be treat as your virtual friendlist. 


======> Old User How many times Comes Back.

========>User Cant Register a book that already essued to another user.
---------have options 
                      --->Add to wishlist
                      --->will be Available at





=======Points will be rewarded if User
------>social share book post or website
------>Link share 


====Background Jobs
-->Reminder for book return daily 
--> Fine for Delay book return and reduce users rating + points.








popular books in your circle(near by)

User Can Add a Request to upload a book .

Book Availability Option 

Available  :On   --> date
           :After ---> date
           















------------->Review 
               --> User can review and Rate---> A book 
                                   ----> A User

   ------------------> You Cant Rate Or review Any User if you are not connect by that user or you not connet with that user.







->>>>>>>>>>User Registration 
                 --> Mobile Otp
                 ---> Email Verification


============================>Time Line Concept <========================================================================
-------->Activity
               -->new book uploaded
               -->add review to a book
               -->like a book


====================> Follow & Following Options <===================================================================
If you follow a user , then whenever user upload a book , notification will be sent .
--> You can Unfollow User , Whom you followed.























================================> Features should be added<=============================================================



----------> Auto spelling checker
            --> User Add Book by Scaning book's barcode if have 


---------------->  User Address proof Verified By admin
          ----> Address Proof certificates


----------------> Live Chat 
             ---> User to Us >>>>>>>>
             ---> One To One >>>>>>> User should booked atleast one book


---------------->popular Author 