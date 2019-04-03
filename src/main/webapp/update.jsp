<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<t:wrapper>

   <div class="container">
       <form id="form_user_update" action="Dbupdate.jsp">

           <div class="input-field">
               <input id="user_name" name="name" type="text" required value="${param.name}">
               <label for="user_name">Name</label>
           </div>
           <div class="input-field">
               <input id="user_email" name="email" type="email" required value="${param.email}">
               <label for="user_email">Email</label>
           </div>
           <div class="input-field">
               <input id="user_contact" name="contact" type="number" maxlength="10" minlength="10" required value="${param.contact}">
               <label for="user_contact">Contact</label>
           </div>
           <input type="hidden" value="${param.id}" name="id">
           <button class="btn" id="add_button_update" type="submit">Add</button>
       </form>
   </div>

</t:wrapper>