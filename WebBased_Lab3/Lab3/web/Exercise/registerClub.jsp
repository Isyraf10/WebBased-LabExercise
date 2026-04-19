<%-- 
    Document   : registerClub.jsp
    Created on : 14 Apr 2026, 3:22:35 pm
    Author     : isyra
--%>

<%@ include file="header.jsp" %>

<h2>Student Club Registration</h2>

<form action="processRegistration.jsp" method="post">
    <p>
        <label for="studentName"><strong>Student Name:</strong></label><br>
        <input type="text" id="studentName" name="studentName" size="40" required>
    </p>

    <p>
        <label for="matricNum"><strong>Matric Number:</strong></label><br>
        <input type="text" id="matricNum" name="matricNum" size="20" required>
    </p>

    <p>
        <label for="selectedClub"><strong>Selected Club:</strong></label><br>
        <select id="selectedClub" name="selectedClub" required>
            <option value="">Select a Club</option>
            <option value="Comtech">Comtech</option>
            <option value="Himmat">Himmat</option>
            <option value="Gemersik">Gemersik</option>
            <option value="Kembara">Kembara</option>
        </select>
    </p>

    <p>
        <input type="submit" value="Register Now">
        <input type="reset" value="Clear Form">
    </p>
</form>

<%@ include file="footer.jsp" %>