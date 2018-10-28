# README

Contact Managament App


# Request Header:
* HTTP_AUTHORIZATION : Bearer#YourTokenHere#
# Routes:
*  contact_index GET    /contact(.:format)     
                 POST   /contact(.:format)     
######  params: { :email, :address, :state, :country, :invitation_medium, :email_status, :sms_status, :user_id }
*   contact GET    /contact/:id(.:format)  
*           PATCH  /contact/:id(.:format) 
*           PUT    /contact/:id(.:format) 
*           DELETE /contact/:id(.:format) 
                
* user_index GET    /user(.:format)        
*             POST   /user(.:format)  
######  params: { :password, :phoneno, :role_id, :status, :email, :first_name, :last_name, :date_of_birth }     
 *        user GET    /user/:id(.:format)    
 *             PATCH  /user/:id(.:format)    
 *             PUT    /user/:id(.:format)    
 *            DELETE /user/:id(.:format)   
               
 *     login POST   /login(.:format)  
######  params: { :email, :password }     
 *     logout POST  /logout(.:format)              
######  params: { :email, :password }
 *      role POST    /role(.:format)                
######  params: {:name}  
* root GET     /                      

