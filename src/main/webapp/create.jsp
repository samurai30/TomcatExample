<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<t:wrapper>

    <div class="container">
        <form id="form_user" action="Dbcreate.jsp" style="background: rgba(0,0,0,0.5); padding: 20px;">

            <div class="input-field">
                <input class="white-text" id="user_name" name="name" type="text" required>
                <label class="white-text" for="user_name">Name</label>
            </div>
            <div class="input-field">
                <input class="white-text" id="user_email" name="email" type="email" required>
                <label class="white-text" for="user_email">Email</label>
            </div>
            <div class="input-field">
                <input class="white-text" id="user_contact" name="contact" type="number" maxlength="10" minlength="10" required>
                <label class="white-text" for="user_contact">Contact</label>
            </div>
            <button class="btn" id="add_button" type="submit">Add</button>
        </form>

    </div>

</t:wrapper>