<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<t:wrapper>

   <div class="container">
       <form id="form_user_update" action="Dbupdate.jsp" style="background: rgba(0,0,0,0.5); padding: 20px;">

           <div class="input-field">
               <input class="white-text" id="user_name" name="name" type="text" required value="${param.name}">
               <label class="white-text" for="user_name">Name</label>
           </div>
           <div class="input-field">
               <input class="white-text" id="user_email" name="email" type="email" required value="${param.email}">
               <label class="white-text" for="user_email">Email</label>
           </div>
           <div class="input-field">
               <input class="white-text" id="user_contact" name="contact" type="number" maxlength="10" minlength="10" required value="${param.contact}">
               <label class="white-text" for="user_contact">Contact</label>
           </div>
           <input type="hidden" value="${param.id}" name="id">
           <button class="btn" id="add_button_update" type="submit">Update</button>
       </form>
   </div>

</t:wrapper>