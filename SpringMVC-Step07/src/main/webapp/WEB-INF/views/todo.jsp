<%@ include file="component/header.jspf"%>
<%@ include file="component/navigation.jspf"%>

    <div class="container">
    	<h1>Add new todo</h1>
        <form:form method="post" commandName="todo">
        <form:hidden path="id"/>
            <fieldset class="form-group">
                <form:label path="desc">Description</form:label>
                <form:input path="desc" type="text" class="form-control" required="required"/>
                <form:errors path="desc" cssClass="text-warning" />	
            </fieldset>
            <fieldset class="form-group">
                <form:label path="targetDate">Target Date</form:label>
                <form:input path="targetDate" type="text" class="form-control"
                    required="required" />
                <form:errors path="targetDate" cssClass="text-warning" />
            </fieldset>
            <button type="submit" class="btn btn-success">Submit</button>
        </form:form>
    </div>

<%@ include file="component/footer.jspf"%>