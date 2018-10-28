# README

Contact Managament App


# Request Header:
* HTTP_AUTHORIZATION : Bearer#YourTokenHere#
# Routes:
*  user_contact_index GET    /user/:user_id/contact(.:format)    
                      POST   /user/:user_id/contact(.:format)     
######  params: { :email, :address, :state, :country, :invitation_medium, :email_status, :sms_status, :user_id }
*  user_contact GET    /user/:user_id/contact/:id(.:format) 
*               PATCH  /user/:user_id/contact/:id(.:format) 
*               PUT    /user/:user_id/contact/:id(.:format)  
*               DELETE /user/:user_id/contact/:id(.:format)  
                
* user_index  GET    /user(.:format)        
*             POST   /user(.:format)  
######  params: { :password, :phoneno, :role_id, :status, :email, :first_name, :last_name, :date_of_birth }     
 *        user GET    /user/:id(.:format)    
 *             PATCH  /user/:id(.:format)    
 *             PUT    /user/:id(.:format)    
 *             DELETE /user/:id(.:format)   
               
 *     login POST   /login(.:format)  
######  params: { :email, :password }     
 *     logout POST  /logout(.:format)              
######  params: { :email, :password }
 *      role POST    /role(.:format)                
######  params: {:name}  
* root GET     /                      

